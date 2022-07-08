#include <Adafruit_GPS.h>
#include <Adafruit_PMTK.h>
#include <NMEA_data.h>
#include <Wire.h>
#include <Adafruit_MAX31865.h>
#include <SPI.h>
#include <RTClib.h>


//-----------------------------------------------------------
// Serial Communication
//-----------------------------------------------------------
#define USBSerial Serial
#define RS232P1 Serial1
#define RS232P2 Serial2
//-----------------------------------------------------------
//-----------------------------------------------------------
// System Level
RTC_DS3231 rtc;
const float ConversionFactor = 5.0 / 1023;
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
#define SDCardDetectPin 34
#define SDCS 36

void setup() {
  rtc.begin();
  RS232P1.begin(115200);
  RS232P2.begin(115200);
  USBSerial.begin(115200);

  pinMode(AlarmOut, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);

  pinMode(SpareInput1, INPUT);
  pinMode(SpareInput2, INPUT);
  pinMode(SpareInput3, INPUT);
  pinMode(LoggingInput, INPUT);

  pinMode(SDCardDetectPin, INPUT);

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

  pinMode(SpareInput1, INPUT);
  pinMode(SpareInput2, INPUT);
  pinMode(SpareInput3, INPUT);
  pinMode(SpareOutput1, OUTPUT);
  pinMode(SpareOutput2, OUTPUT);
  pinMode(SpareOutput3, OUTPUT);
  pinMode(SpareOutput4, OUTPUT);
}

void loop() {
  //OutputTesting();
  //InputTesting();
  //OilPressureTesting();
  //AFRTesting();
  //FuelPressureTesting();
  //AltCurrentTesting();
  //RPMTesting();
  //VoltageSensorTesting();
  //VacuumTesting();
  //ThrottlePositionTesting();
  //SpareADCTestin();
  //SDCardTesting();
  //GPSTesting();
  //RTCBATTESTING();
}

void OutputTesting() {
  Serial.println("Turned ON:LED1");
  digitalWrite(LED1, HIGH);
  delay(2500);
  Serial.println("Turned Off:LED1");
  digitalWrite(LED1, LOW);
  delay(5000);

  Serial.println("Turned ON:LED2");
  digitalWrite(LED2, HIGH);
  delay(2500);
  Serial.println("Turned Off:LED2");
  digitalWrite(LED2, LOW);
  delay(5000);

  Serial.println("Turned ON:Alarm");
  digitalWrite(AlarmOut, HIGH);
  delay(2500);
  Serial.println("Turned Off:Alarm");
  digitalWrite(AlarmOut, LOW);
  delay(5000);

  Serial.println("Turned ON:OUT1");
  digitalWrite(SpareOutput1, HIGH);
  delay(2500);
  Serial.println("Turned Off:OUT1");
  digitalWrite(SpareOutput1, LOW);
  delay(5000);

  Serial.println("Turned ON:OUT2");
  digitalWrite(SpareOutput2, HIGH);
  delay(2500);
  Serial.println("Turned Off:OUT2");
  digitalWrite(SpareOutput2, LOW);
  delay(5000);

  Serial.println("Turned ON:OUT3");
  digitalWrite(SpareOutput3, HIGH);
  delay(2500);
  Serial.println("Turned Off:OUT3");
  digitalWrite(SpareOutput3, LOW);
  delay(5000);

  Serial.println("Turned ON:OUT4");
  digitalWrite(SpareOutput4, HIGH);
  delay(2500);
  Serial.println("Turned Off:OUT4");
  digitalWrite(SpareOutput4, LOW);
  delay(5000);
}

void InputTesting() {
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

float ReadAnalog(int Samples, int PinNumber) {
  long Sum = 0;
  float Value = 0;
  for (int x = 0; x < Samples; x++) {
    Sum = Sum + analogRead(PinNumber);
  }
  Value = (Sum / Samples);
  return Value;
}

void OilPressureTesting() {
  Serial.print("OilPressurePin:");
  Serial.println(ReadAnalog(50, OilPressurePin));
  delay(1000);
}

void AFRTesting() {
  Serial.print("AFR1:");
  Serial.println(ReadAnalog(50, AFR1Pin));
  delay(1000);
  Serial.print("AFR2:");
  Serial.println(ReadAnalog(50, AFR2Pin));
  delay(1000);
}

void FuelPressureTesting() {
  Serial.print("FuelPressure1:");
  Serial.println(ReadAnalog(50, FuelPressure1Pin));
  delay(1000);
  Serial.print("FuelPressure2:");
  Serial.println(ReadAnalog(50, FuelPressure2Pin));
  delay(1000);
}

void AltCurrentTesting() {
  Serial.print("CurrentSensorPin:");
  Serial.println(ReadAnalog(50, CurrentSensorPin));
  delay(1000);
}

void VoltageSensorTesting() {
  Serial.print("VoltageSensor:");
  Serial.println(ReadAnalog(50, VoltageSensorPin));
  delay(1000);
}

void VacuumTesting() {
  Serial.print("Vacuum1:");
  Serial.println(ReadAnalog(50, Vacuum1Pin));
  delay(1000);
  Serial.print("Vacuum2:");
  Serial.println(ReadAnalog(50, Vacuum2Pin));
  delay(1000);
}

void ThrottlePositionTesting() {
  Serial.print("ThrottlePosition:");
  Serial.println(ReadAnalog(50, ThrottlePositionPin));
  delay(1000);
}

void SpareADCTestin() {
  Serial.print("SpareBufferedADC:");
  Serial.println(ReadAnalog(50, SpareBufferedADCPin));
  delay(1000);
}

void RPMTesting() {
  digitalWrite(RPMEnable, HIGH);
  delay(1000);

  Serial.print("RPMADC:");
  int Reading = ReadAnalog(50, RPMADC);
  Serial.print(Reading);
  Serial.print(" : ");
  Serial.println(Reading * ConversionFactor);

  delay(1000);
  //digitalWrite(RPMEnable,LOW);
  //delay(1000);
}

void SDCardTesting() {
  Serial.print("SD Detect:");
  Serial.println(digitalRead(SDCardDetectPin));
}

void GPSTesting() {
  Serial.print("GPSBatt:");
  Serial.println(ReadAnalog(50, GPSBattPin));
  delay(1000);
}

void RTCBATTESTING() {
  Serial.print("RTCBattery:");
  Serial.println(ReadAnalog(50, RTCBatteryPin));
  delay(1000);
}
