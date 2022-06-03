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

//-----------------------------------------------------------
// System Level
RTC_DS3231 rtc;
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

void setup() {
  rtc.begin();
  RS232.begin(115200);
  USBSerial.begin(115200);

  pinMode(SpareInput1, INPUT);
  pinMode(SpareInput2, INPUT);
  pinMode(SpareInput3, INPUT);
  pinMode(SpareOutput1, OUTPUT);
  pinMode(SpareOutput2, OUTPUT);
  pinMode(SpareOutput3, OUTPUT);
  pinMode(SpareOutput4, OUTPUT);

  pinMode(OutputSiren, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LoggingIn, INPUT);
  pinMode(SDCardDetect, INPUT);
  
  Water.begin(MAX31865_3WIRE);
  LeftSide.begin(MAX31865_3WIRE);
  RightSide.begin(MAX31865_3WIRE);
  Carb.begin(MAX31865_3WIRE);
  FrontOfEngine.begin(MAX31865_3WIRE);
  Ambient.begin(MAX31865_3WIRE);
}

void loop(){
  OutputTest();
  InputTest();
  RTDTest();
  LCDTest();
  RTCTest();
  ADCTesting();
}

void ADCTesting(){
//VoltageSensor
//RTCBattery
//Vacuum1
//Vacuum
//AtlernatorCurrent
//FuelPresssure1
//FuelPressure2
//AFR1
//AFR2
//RPM
//GPSBattery
//ThrottlePosition
//SpareBufferedADC
}

void RTCTest(){
  
}

void LCDTest(){
  
}

void RTDTest(){
  
}

void InputTest(){
  Serial.println("Reading SpareInput1:" + String(digitalRead(SpareInput1)));
  delay(5000);
  Serial.println("Reading SpareInput2:" + String(digitalRead(SpareInput2)));
  delay(5000);
  Serial.println("Reading SpareInput3:" + String(digitalRead(SpareInput3)));
  delay(5000);
  Serial.println("Reading LoggingIn:" + String(digitalRead(LoggingIn)));
  delay(5000);
  Serial.println("Reading SDCardDetect:" + String(digitalRead(SDCardDetect)));
  delay(5000);
}

void OutputTest(){
  Serial.println("setting SpareOutput1 HIGH");
  digitalWrite(SpareOutput1,HIGH);
  delay(2500);
  Serial.println("setting SpareOutput1 LOW");
  digitalWrite(SpareOutput1,HIGH);
  delay(2500);

  Serial.println("setting SpareOutput2 HIGH");
  digitalWrite(SpareOutput2,HIGH);
  delay(2500);
  Serial.println("setting SpareOutput2 LOW");
  digitalWrite(SpareOutput2,HIGH);
  delay(2500);

  Serial.println("setting SpareOutput3 HIGH");
  digitalWrite(SpareOutput3,HIGH);
  delay(2500);
  Serial.println("setting SpareOutput3 LOW");
  digitalWrite(SpareOutput3,HIGH);
  delay(2500);

  Serial.println("setting SpareOutput4 HIGH");
  digitalWrite(SpareOutput4,HIGH);
  delay(2500);
  Serial.println("setting SpareOutput4 LOW");
  digitalWrite(SpareOutput4,HIGH);
  delay(2500);

  Serial.println("setting OutputSiren HIGH");
  digitalWrite(OutputSiren,HIGH);
  delay(2500);
  Serial.println("setting OutputSiren LOW");
  digitalWrite(OutputSiren,HIGH);
  delay(2500);

  Serial.println("setting LED1 HIGH");
  digitalWrite(LED1,HIGH);
  delay(2500);
  Serial.println("setting LED1 LOW");
  digitalWrite(LED1,HIGH);
  delay(2500);

  Serial.println("setting LED2 HIGH");
  digitalWrite(LED2,HIGH);
  delay(2500);
  Serial.println("setting LED2 LOW");
  digitalWrite(LED2,HIGH);
  delay(2500);  
}
