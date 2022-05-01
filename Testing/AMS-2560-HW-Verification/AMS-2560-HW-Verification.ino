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
/*
   Spare Inputs are indexed by their number +1 because I don't
   want to start at zero.
*/
const int SpareInputs[] = {2,3,47};
const int SpareInputSize = sizeof(SpareInputs) / sizeof(int);
int LastInputState[] = {};
const int SpareOutputs[] = {4,5,6,7};
const int SpareOutputSize = sizeof(SpareOutputs) / sizeof(int);
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
#define RTDCLK 44
#define RTDDI 48
#define RTDDO 46
Adafruit_MAX31865 Water = Adafruit_MAX31865(48, RTDDI, RTDDO, RTDCLK);
Adafruit_MAX31865 LeftSide = Adafruit_MAX31865(46, RTDDI, RTDDO, RTDCLK);
Adafruit_MAX31865 RightSide = Adafruit_MAX31865(44, RTDDI, RTDDO, RTDCLK);
Adafruit_MAX31865 Carb = Adafruit_MAX31865(38, RTDDI, RTDDO, RTDCLK);
Adafruit_MAX31865 FrontOfEngine = Adafruit_MAX31865(42, RTDDI, RTDDO, RTDCLK);
Adafruit_MAX31865 Ambient = Adafruit_MAX31865(40, RTDDI, RTDDO, RTDCLK);
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

  for (int i = 0; i <= SpareInputSize; i++) {
    pinMode(SpareInputs[i], INPUT);
    LastInputState[i] = digitalRead(SpareInputs[i]);
  }
  for (int i = 0; i <= SpareOutputSize; i++) {
    pinMode(SpareOutputs[i], OUTPUT);
  }

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
  String DateTimeString = String(now.year())
                          + "/" + String(now.month())
                          + "/" + String(now.day())
                          + "-" + String(now.hour())
                          + ":" + String(now.minute())
                          + ":" + String(now.second());

  LastTimeRTCTemp = DateTimeString;
  if (Units == 'I') {
    LastRTCTemp = ConvertCtoF(rtc.getTemperature());
  }
  else {
    LastRTCTemp = rtc.getTemperature();
  }
  return DateTimeString;
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

void ReadAllInputs() {
  for (int i = 1; i <= SpareInputSize; i++) {
    int CurrentInputRead = ReadInput(SpareInputs[i]);
    if (CurrentInputRead != LastInputState[i]) {
      LastInputState[i] = CurrentInputRead;
      if (StreamingDataUSB == true) {
        PrintInputState(i, CurrentInputRead, 0);
      }
      if (StreamingDataRS232 == true) {
        PrintInputState(i, CurrentInputRead, 1);
      }

    }
  }
}

int ReadInput(int Number) {
  int Value = digitalRead(SpareInputs[Number]);
  return Value;
}

int ReadOutput(int Number) {
  int Value = digitalRead(SpareOutputs[Number - 1]);
  return Value;
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
