#include <LiquidCrystal_I2C.h>
#include <Wire.h>
#include <Adafruit_MAX31865.h>
#include <SPI.h>
#include <RTClib.h>
#include <EEPROM.h>

//-----------------------------------------------------------
// Serial Communication, UI 
//-----------------------------------------------------------
#define USBSerial Serial
#define RS232 Serial2
#define GPSSerial Serial3
String inputString, inputStringRS232 = "";         // a String to hold incoming data from ports
bool stringComplete, stringCompleteRS232 = false;     // whether the string is complete for each respective port

char* AcceptedCommands[] = {"UNITS?", "DEVICE?", "BATTERY?", "RTCBATTERY?", "TEMPS?", "UNITTEMP?", "WARNING?",
                            "STREAMING?", "ALLDATA?", "UPDATEALL", "RESETWARNINGS", "RESETALLALARMS",
                            "TIME?", "REBOOT", "RESET", "STREAMINGONBOOT?"
                           };
char* ParameterCommands[] = {"SETUNITS", "SETSTREAMINGDATA", "SETOUTPUT", "READINPUT", "SETTIME", "GETOUTPUT", "READANALOG", 
                             "SETSTREAMINGONBOOT"
                            };

//-----------------------------------------------------------
// System Level
RTC_DS3231 rtc;
const String DeviceName = "AMS";
const String FWVersion = "1.0.0";
const float ConversionFactor = 5.0 / 1023;

char Units;
String TempUnits, PressureUnits;
const String StatesForOutput[2] = {"Off", "On"};

//-----------------------------------------------------------
//-----------------------------------------------------------
//Spare IO
#define SpareInput1 2
#define SpareInput2 3
#define SpareInput3 47
#define SpareOutput1 4
#define SpareOutput2 5
#define SpareOutput3 6 
#define SpareOutput4 7

//-----------------------------------------------------------
//-----------------------------------------------------------
//Analog Sensors 
#define VoltageSensor A0
#define RTCBattery A1
#define Vacuum1 A2
#define Vacuum A3
#define AtlernatorCurrent A4
#define FuelPresssure1 A5
#define FuelPressure2 A6
#define AFR1 A8
#define AFR2 A9
#define RPM A10
#define GPSBattery A11
#define ThrottlePosition A12
#define SpareBufferedADC A13
//-----------------------------------------------------------
//-----------------------------------------------------------
//Specific IO 
#define OutputSiren 10
#define LED1 43
#define LED2 45
#define LoggingIn 49
#define SDCardDetect 34
//-----------------------------------------------------------
//-----------------------------------------------------------
//RTD 
#define RREF 430.0
#define RNOMINAL 100.0
Adafruit_MAX31865 Water = Adafruit_MAX31865(48);
Adafruit_MAX31865 LeftSide = Adafruit_MAX31865(46);
Adafruit_MAX31865 RightSide = Adafruit_MAX31865(44);
Adafruit_MAX31865 Carb = Adafruit_MAX31865(38);
Adafruit_MAX31865 FrontOfEngine = Adafruit_MAX31865(42);
Adafruit_MAX31865 Ambient = Adafruit_MAX31865(40);
//-----------------------------------------------------------
//-----------------------------------------------------------
/*
   All the Stored Values and Times to have states
   that can be recalled if streaming is turned off
*/
//Energy Monitoring
float LastDCVoltage, LastAltCurrent, LastRTCVoltage = 0.0;
String LastTimeDCVoltage, LastTimeRTCVoltage = "";
//Temps
String LastTimeTemp = "";
float LastFrontACTemp, LastBackACTemp, LastOutsideTemp, LastBackCabinTemp, LastHallwayTemp, LastFreezerTemp, LastFridgeTemp,
      LastBathroomTemp = 0.0;
//RTC TEMP
float LastRTCTemp = 0.0;
String LastTimeRTCTemp = "";
//-----------------------------------------------------------
//-----------------------------------------------------------

void setup() {
  rtc.begin();
  RS232.begin(115200);
  USBSerial.begin(115200);
  inputString.reserve(200);
  inputStringRS232.reserve(200);
}

void loop() {
  

}


//------------------------------------------------------------------
//Helper functions
//------------------------------------------------------------------
void(* resetFunc) (void) = 0;  // declare reset fuction at address 0

void RebootDisBitch() {
  BroadCast("%R," + GetCurrentTime() + ",Rebooting");
  delay(2000);
  resetFunc();
}

void MIBFLASH() {
  BroadCast("%R," + GetCurrentTime() + ",Reseting wait for reboot Message");
  for (int i = 0 ; i < EEPROM.length() ; i++) {
    EEPROM.write(i, 0);
  }
  RebootDisBitch();
}

float ConvertCtoF(float C) {
  float F = (1.8 * C) + 32;
  return F;
}

float ConvertPSItoKPa(float PSI) {
  float KPA = 6.8947572932 * PSI;
  return KPA;
}

String GetCurrentTime() {
  DateTime now = rtc.now();

  char buf1[20];
  sprintf(buf1, "%02d:%02d:%02d-%02d/%02d/%02d",  now.hour(), now.minute(), now.second(), now.day(), now.month(), now.year());
  LastTimeRTCTemp = buf1;
  
  if (Units == 'I') {
    LastRTCTemp = ConvertCtoF(rtc.getTemperature());
  }
  else {
    LastRTCTemp = rtc.getTemperature();
  }
  return buf1;
}

String GetCurrentDate() {
  DateTime now = rtc.now();
  String CurrentDate = String(now.year()) + String(now.month()) + String(now.day());
  return CurrentDate;
}

void SetUnitsForOutput() {
  if (Units == "M") {
    TempUnits = "C";
    PressureUnits = "KPa";
  }
  else {
    TempUnits = "F";
    PressureUnits = "PSI";
  }
}

float ReadAnalog(int Samples, int PinNumber) {
  long Sum = 0;
  float Value = 0;
  for (int x = 0; x < Samples; x++) {
    Sum = Sum + analogRead(PinNumber);
  }
  Value = (Sum / Samples);
  return Value;
}


//------------------------------------------------------------------
//Serial
//------------------------------------------------------------------
/*
  SerialEvent occurs whenever a new data comes in the hardware serial RX. This
  routine is run between each time loop() runs, so using delay inside loop can
  delay response. Multiple bytes of data may be available.
*/
void serialEvent() {
  while (USBSerial.available()) {
    // get the new byte:
    char inChar = (char)USBSerial.read();
    // add it to the inputString:
    inputString += inChar;
    // if the incoming character is a carriage return, set a flag so the main loop can
    // do something about it:
    if (inChar == '\r') {
      stringComplete = true;
    }
  }
}

void serialRS232() {
  while (RS232.available()) {
    // get the new byte:
    char inChar = (char)RS232.read();
    // add it to the inputString:
    inputStringRS232 += inChar;
    // if the incoming character is a carriage return, set a flag so the main loop can
    // do something about it:
    if (inChar == '\r') {
      stringCompleteRS232 = true;
    }
  }
}

void BroadCast(String Message) {
  SendItOut(Message, 0);
  SendItOut(Message, 1);
}

void SendItOut(String Message, int WhichPort) {
  if (WhichPort == 0) {
    USBSerial.println(Message);
  }
  else {
    RS232.println(Message);
  }
}
