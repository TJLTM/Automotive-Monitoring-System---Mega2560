#include <Adafruit_GPS.h>
#include <Adafruit_PMTK.h>
#include <NMEA_data.h>
#include <Wire.h>
#include <Adafruit_MAX31865.h>
#include <SPI.h>
#include <RTClib.h>
#include <EEPROM.h>



//-----------------------------------------------------------
// Serial Communication
//-----------------------------------------------------------
#define USBSerial Serial
#define RS232P1 Serial1
#define RS232P2 Serial2
char* AcceptedCommands[] = {"UNITS?", "DEVICE?", "BATTERY?", "RTCBATTERY?", "TEMPS?", "UNITTEMP?", "WARNING?",
                            "STREAMING?", "ALLDATA?", "UPDATEALL", "RESETWARNINGS", "RESETALLALARMS",
                            "TIME?", "REBOOT", "RESET", "STREAMINGONBOOT?", "STATUS?", "PORT?", "ALARM?"
                           };
char* ParameterCommands[] = {"SETUNITS", "SETSTREAMINGDATA", "SETTIME", "SETSTREAMINGONBOOT",
                            };
String inputString, inputStringRS232P1, inputStringRS232P2  = "";         // a String to hold incoming data from ports
bool stringComplete, stringCompleteRS232P1, stringCompleteRS232P2 = false;     // whether the string is complete for each respective port
//-----------------------------------------------------------
//-----------------------------------------------------------
// System Level
RTC_DS3231 rtc;
const String DeviceName = "AMS";
const String FWVersion = "0.0.1";
const float ConversionFactor = 5.0 / 1023;
bool WarningActive, AlarmActive = false;
int TotalWarnings = 7;
int ArrayOfWarnings[] = {};
long TempTimer, WarningBlinkTimer;
bool StreamingDataUSB, StreamingDataRS232 = false;
char Units;
String TempUnits, PressureUnits;
//-----------------------------------------------------------
/*
   All the Stored Values and Times to have states
   that can be recalled if streaming is turned off
*/
//Fuel Pressure
float LastFuel1, LastFuel2 = 0.0;
String LastTimeFuel = "";
//Battery Monitoring
float LastDCVoltage, LastRTCVoltage = 0.0;
String LastTimeDCVoltage, LastTimeRTCVoltage = "";
// Temps
String LastTimeTemp = "";
float LastCarbTemp, LastAmbientTemp, LastFrontOfEngineTemp, LastRightSideTemp, LastLeftSideTemp, LastWaterTemp = 0.0;
float LastRTCTemp = 0.0;
String LastTimeRTCTemp = "";
//-----------------------------------------------------------
//-----------------------------------------------------------
//RTD sensors
#define RTDWaterCS 48
#define RTDCarbCS 38
#define RTDAmbientCS 40
#define RTDLSCS 46
#define RTDRSCS 44
#define RTDFrontCS 42
#define RREF      430.0
#define RNOMINAL  100.0
Adafruit_MAX31865 RTDWater = Adafruit_MAX31865(RTDWaterCS);
Adafruit_MAX31865 RTDCarb = Adafruit_MAX31865(RTDCarbCS);
Adafruit_MAX31865 RTDAmbient = Adafruit_MAX31865(RTDAmbientCS);
Adafruit_MAX31865 RTDLS = Adafruit_MAX31865(RTDLSCS);
Adafruit_MAX31865 RTDRS = Adafruit_MAX31865(RTDRSCS);
Adafruit_MAX31865 RTDFront = Adafruit_MAX31865(RTDFrontCS);
//-----------------------------------------------------------
//-----------------------------------------------------------
//Alarm
#define AlarmOut 8
#define LED1 43
#define LED2 45
//-----------------------------------------------------------
//-----------------------------------------------------------
// Spare Inputs Outputs and Analog
#define LoggingInput 49
#define SpareInput1 2
#define SpareInput2 3
#define SpareInput3 47

#define SpareOutput1 4
#define SpareOutput2 5
#define SpareOutput3 6
#define SpareOutput4 7
//-----------------------------------------------------------
//-----------------------------------------------------------
// ADC Sensors
#define FuelPressure1Pin A5
#define FuelPressure2Pin A6
#define VoltageSensorPin A0
#define RTCBatteryPin A1
#define Vacuum1Pin A2
#define Vacuum2Pin A3
#define CurrentSensorPin A4
#define OilPressurePin A7
#define AFR1Pin A8
#define AFR2Pin A9
#define GPSBattPin A11
#define ThrottlePositionPin A12
#define SpareBufferedADCPin A13
//-----------------------------------------------------------
//-----------------------------------------------------------
// RPM
#define RPMADC A10
#define RPMEnable 41
//-----------------------------------------------------------
//-----------------------------------------------------------

void setup() {
rtc.begin();
  RS232P1.begin(115200);
  RS232P2.begin(115200);
  USBSerial.begin(115200);
  inputString.reserve(100);
  inputStringRS232P1.reserve(100);
  inputStringRS232P2.reserve(100);

  pinMode(AlarmOut, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);

  pinMode(SpareInput1,INPUT);
  pinMode(SpareInput2,INPUT);
  pinMode(SpareInput3,INPUT);
  pinMode(LoggingInput,INPUT);

  //RTD
  pinMode(RTDWaterCS, OUTPUT);
  pinMode(RTDCarbCS, OUTPUT);
  pinMode(RTDAmbientCS, OUTPUT);
  pinMode(RTDLSCS, OUTPUT);
  pinMode(RTDRSCS, OUTPUT);
  pinMode(RTDFrontCS, OUTPUT);
  /*
      Please Reference Adafruit_MAX31865
      docs for setup of these boards if
      you are going to use 4 or 2 wire
  */
  RTDWater.begin(MAX31865_3WIRE);
  RTDCarb.begin(MAX31865_3WIRE);
  RTDAmbient.begin(MAX31865_3WIRE);
  RTDLS.begin(MAX31865_3WIRE);
  RTDRS.begin(MAX31865_3WIRE);
  RTDFront.begin(MAX31865_3WIRE);


}

void loop() {
  //OutputTesting();
 //InputTesting();
 //OilPressureTesting();
 //AFRTesting();
 //FuelPressureTesting();
 //AltCurrentTesting();
 
 //RPMTesting();
 RTCBattery();
}

void OutputTesting(){
  Serial.println("Turned ON:LED1");
  digitalWrite(LED1,HIGH);
  delay(2500);
  Serial.println("Turned Off:LED1");
  digitalWrite(LED1,LOW);
  delay(5000);

  Serial.println("Turned ON:LED2");
  digitalWrite(LED2,HIGH);
  delay(2500);
  Serial.println("Turned Off:LED2");
  digitalWrite(LED2,LOW);
  delay(5000);

  Serial.println("Turned ON:Alarm");
  digitalWrite(AlarmOut,HIGH);
  delay(2500);
  Serial.println("Turned Off:Alarm");
  digitalWrite(AlarmOut,LOW);
  delay(5000);

  Serial.println("Turned ON:OUT1");
  digitalWrite(SpareOutput1,HIGH);
  delay(2500);
  Serial.println("Turned Off:OUT1");
  digitalWrite(SpareOutput1,LOW);
  delay(5000);

  Serial.println("Turned ON:OUT2");
  digitalWrite(SpareOutput2,HIGH);
  delay(2500);
  Serial.println("Turned Off:OUT2");
  digitalWrite(SpareOutput2,LOW);
  delay(5000);

  Serial.println("Turned ON:OUT3");
  digitalWrite(SpareOutput3,HIGH);
  delay(2500);
  Serial.println("Turned Off:OUT3");
  digitalWrite(SpareOutput3,LOW);
  delay(5000);

  Serial.println("Turned ON:OUT4");
  digitalWrite(SpareOutput4,HIGH);
  delay(2500);
  Serial.println("Turned Off:OUT4");
  digitalWrite(SpareOutput4,LOW);
  delay(5000);  
}

void InputTesting(){
  // These are inverted Logic 0=On 1=Off
  //SOrry not enough room to put an inverter
  Serial.print("INPUT1:");
  Serial.println(digitalRead(SpareInput1));
  delay(2500);

  Serial.print("INPUT2:");
  Serial.println(digitalRead(SpareInput2));
  delay(2500);

  Serial.print("INPUT3:");
  Serial.println(digitalRead(SpareInput3));
  delay(2500);

  Serial.print("Logging:");
  Serial.println(digitalRead(LoggingInput));
  delay(2500);
}

void OilPressureTesting(){
  
}

void AFRTesting(){
  
}

void FuelPressureTesting(){
  
}

void AltCurrentTesting(){
  
}

void VoltageSensorTesting(){
  
}

void VacuumTesting(){
  
}

void ThrottlePositionTesting(){
  
}

void SpareADCTestin(){
  
}

void RPMTesting(){
  digitalWrite(RPMEnable,HIGH);
  delay(1000);
  //digitalWrite(RPMEnable,LOW);
  //delay(1000);
  
  
}

void SDCardTesting(){
  
}

void GPSTesting(){
  Serial.print("GPS Battery:");
  Serial.println(analogRead(GPSBattPin)*ConversionFactor);
  delay(1000);
  
  
}

void RTCBattery(){
  Serial.print("RTCBattery Voltage:");
  Serial.println(analogRead(RTCBatteryPin)*ConversionFactor);
  delay(1000);
}
