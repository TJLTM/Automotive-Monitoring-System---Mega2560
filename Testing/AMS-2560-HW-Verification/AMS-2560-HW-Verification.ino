#include <LiquidCrystal_I2C.h>
#include <Wire.h>
#include <Adafruit_MAX31865.h>
#include <SPI.h>
#include <RTClib.h>

#define USBSerial Serial
#define RS232 Serial2

RTC_DS3231 rtc;
char daysOfTheWeek[7][12] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
LiquidCrystal_I2C lcd(0x27,20,4);  // set the LCD address to 0x27 for a 16 chars and 2 line display

//Spare IO
#define SpareInput1 2
#define SpareInput2 3
#define SpareInput3 47
#define SpareOutput1 4
#define SpareOutput2 5
#define SpareOutput3 6
#define SpareOutput4 7

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
//Specific IO
#define OutputSiren 10
#define LED1 43
#define LED2 45
#define LoggingIn 49
#define SDCardDetect 34
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

  lcd.init();
  lcd.backlight();

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
Serial.println("VoltageSensor:" +String(ReadVoltage(VoltageSensor)));
delay(5000);
Serial.println("RTCBattery:" +String(ReadVoltage(RTCBattery)));
delay(5000);
Serial.println("Vacuum1:" +String(ReadVoltage(Vacuum1)));
delay(5000);
Serial.println("Vacuum:" +String(ReadVoltage(Vacuum)));
delay(5000);
Serial.println("AtlernatorCurrent:" +String(ReadVoltage(AtlernatorCurrent)));
delay(5000);
Serial.println("FuelPresssure1:" +String(ReadVoltage(FuelPresssure1)));
delay(5000);
Serial.println("FuelPressure2:" +String(ReadVoltage(FuelPressure2)));
delay(5000);
Serial.println("AFR1:" +String(ReadVoltage(AFR1)));
delay(5000);
Serial.println("AFR2:" +String(ReadVoltage(AFR2)));
delay(5000);
Serial.println("RPM:" +String(ReadVoltage(RPM)));
delay(5000);
Serial.println("GPSBattery:" +String(ReadVoltage(GPSBattery)));
delay(5000);
Serial.println("ThrottlePosition:" +String(ReadVoltage(ThrottlePosition)));
delay(5000);
Serial.println("SpareBufferedADC:" +String(ReadVoltage(SpareBufferedADC)));
delay(5000);
}

float ReadVoltage(int Pin){
  return analogRead(Pin)*(5.0/1023);
}

void RTCTest(){
    DateTime now = rtc.now();

    Serial.print(now.year(), DEC);
    Serial.print('/');
    Serial.print(now.month(), DEC);
    Serial.print('/');
    Serial.print(now.day(), DEC);
    Serial.print(" (");
    Serial.print(daysOfTheWeek[now.dayOfTheWeek()]);
    Serial.print(") ");
    Serial.print(now.hour(), DEC);
    Serial.print(':');
    Serial.print(now.minute(), DEC);
    Serial.print(':');
    Serial.print(now.second(), DEC);
    Serial.println();

    Serial.print(" since midnight 1/1/1970 = ");
    Serial.print(now.unixtime());
    Serial.print("s = ");
    Serial.print(now.unixtime() / 86400L);
    Serial.println("d");

    // calculate a date which is 7 days, 12 hours, 30 minutes, 6 seconds into the future
    DateTime future (now + TimeSpan(7,12,30,6));

    Serial.print(" now + 7d + 12h + 30m + 6s: ");
    Serial.print(future.year(), DEC);
    Serial.print('/');
    Serial.print(future.month(), DEC);
    Serial.print('/');
    Serial.print(future.day(), DEC);
    Serial.print(' ');
    Serial.print(future.hour(), DEC);
    Serial.print(':');
    Serial.print(future.minute(), DEC);
    Serial.print(':');
    Serial.print(future.second(), DEC);
    Serial.println();

    Serial.print("Temperature: ");
    Serial.print(rtc.getTemperature());
    Serial.println(" C");

    Serial.println();
}

void LCDTest(){
  lcd.setCursor(0,2);
  lcd.print(millis());
}

void RTDTest(){
  uint16_t rtd0 = Water.readRTD();
  Serial.println("Water:" + String(Water.temperature(RNOMINAL, RREF)));

  uint16_t rtd1 = LeftSide.readRTD();
  Serial.println("LeftSide:" + String(LeftSide.temperature(RNOMINAL, RREF)));

  uint16_t rtd2 = LeftSide.readRTD();
  Serial.println("LeftSide:" + String(LeftSide.temperature(RNOMINAL, RREF)));

  uint16_t rtd3 = RightSide.readRTD();
  Serial.println("RightSide:" + String(RightSide.temperature(RNOMINAL, RREF)));

  uint16_t rtd4 = Carb.readRTD();
  Serial.println("Carb:" + String(Carb.temperature(RNOMINAL, RREF)));

  uint16_t rtd5 = FrontOfEngine.readRTD();
  Serial.println("FrontOfEngine:" + String(FrontOfEngine.temperature(RNOMINAL, RREF)));

  uint16_t rtd6 = Ambient.readRTD();
  Serial.println("Ambient:" + String(Ambient.temperature(RNOMINAL, RREF)));  
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
