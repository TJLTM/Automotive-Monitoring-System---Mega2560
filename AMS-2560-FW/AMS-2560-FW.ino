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
char* ParameterCommands[] = {"SETUNITS", "SETSTREAMINGDATA", "SETTIME", "SETSTREAMINGONBOOT", "SETACENMONONBOOT",
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
#define WarningLED 11
#define LED1 43
#define LED2 45
//-----------------------------------------------------------
//-----------------------------------------------------------
// Spare Inputs Outputs and Analog
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
#define FuelPressure1 A5
#define FuelPressure2 A6
#define VoltageSensor A0
#define RTCBattery A1
#define Vacuum1 A2
#define Vacuum2 A3
#define AltCurrent A4
#define OilPressurePin A7
#define AFR1 A8
#define AFR2 A9
#define GPSBatt A11
#define ThrottlePosition A12
#define SpareBufferedADC A13
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
  pinMode(WarningLED, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);


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

  //Energy
  //Load from EEProm

  //Load Streaming Setting from EEProm
  StreamingDataUSB = GetFromEEPROMStreamOnBootUSB();
  StreamingDataRS232 = GetFromEEPROMStreamOnBootRS232();

  //load system settings from EEProm

  //Set Warning Array up with -1 for being cleared.
  ResetWarnings();

  //Set up displays and output on the Serial Port
  BroadCast("Starting " + DeviceName);
  BroadCast("FW: " + FWVersion);
  Units = GetFromEEPROMUnits();
  SetUnitsForOutput();
  BroadCast("Units: " + String(Units));

  //Run through the sensors and get values for everything
  ForceCompleteUpdateOfAllStates();
  BroadCast("System Initialized and values populated:" + GetCurrentTime());
}

void loop() {

  /*
    Handle the Incoming commands from the Serial Ports
    after all the other operations have been done
  */
  if (stringComplete) {
    inputString = PainlessInstructionSet(inputString, 0);
    stringComplete = false;
  }

  serialRS232P1();
  if (stringCompleteRS232P1) {
    stringCompleteRS232P1 = PainlessInstructionSet(inputStringRS232P1, 1);
    stringCompleteRS232P1 = false;
  }

  serialRS232P2();
  if (stringCompleteRS232P2) {
    stringCompleteRS232P2 = PainlessInstructionSet(inputStringRS232P2, 1);
    stringCompleteRS232P2 = false;
  }
  
}

void FuelPressure() {
  float FuelPressureDN1 = ReadAnalog(25, FuelPressure1);
  float FuelPressureDN2 = ReadAnalog(25, FuelPressure2);

  //Sensors i'm using drop out at .5 volts and anything below that will show neg pressure. DN 102 translates to 0.5V
  if (FuelPressureDN1 > 102) {
    if (Units == 'I') {
      LastFuel1 = (7.5 * ConversionFactor * FuelPressureDN1) - 3.75;
      LastFuel2 = (7.5 * ConversionFactor * FuelPressureDN2) - 3.75;
    }
    else {
      LastFuel1 = ConvertPSItoKPa((7.5 * ConversionFactor * FuelPressureDN1) - 3.75);
      LastFuel2 = ConvertPSItoKPa((7.5 * ConversionFactor * FuelPressureDN2) - 3.75);
    }
  }
  else {
    LastFuel1, LastFuel2 = 0.0;
  }

  LastTimeFuel = GetCurrentTime();
}

void RTDSensors() {
  uint16_t rtd0 = RTDWater.readRTD();
  if (Units == 'I') {
    LastWaterTemp = ConvertCtoF(RTDWater.temperature(RNOMINAL, RREF));
  }
  else {
    LastWaterTemp = RTDWater.temperature(RNOMINAL, RREF);
  }

  uint16_t rtd1 = RTDCarb.readRTD();
  if (Units == 'I') {
    LastCarbTemp = ConvertCtoF(RTDCarb.temperature(RNOMINAL, RREF));
  }
  else {
    LastCarbTemp = RTDCarb.temperature(RNOMINAL, RREF);
  }

  uint16_t rtd2 = RTDAmbient.readRTD();
  if (Units == 'I') {
    LastAmbientTemp = ConvertCtoF(RTDAmbient.temperature(RNOMINAL, RREF));
  }
  else {
    LastAmbientTemp = RTDAmbient.temperature(RNOMINAL, RREF);
  }

  uint16_t rtd3 = RTDLS.readRTD();
  if (Units == 'I') {
    LastRightSideTemp = ConvertCtoF(RTDLS.temperature(RNOMINAL, RREF));
  }
  else {
    LastRightSideTemp = RTDLS.temperature(RNOMINAL, RREF);
  }

  uint16_t rtd4 = RTDLS.readRTD();
  if (Units == 'I') {
    LastLeftSideTemp = ConvertCtoF(RTDLS.temperature(RNOMINAL, RREF));
  }
  else {
    LastLeftSideTemp = RTDLS.temperature(RNOMINAL, RREF);
  }

  uint16_t rtd5 = RTDFront.readRTD();
  if (Units == 'I') {
    LastFrontOfEngineTemp = ConvertCtoF(RTDFront.temperature(RNOMINAL, RREF));
  }
  else {
    LastFrontOfEngineTemp = RTDFront.temperature(RNOMINAL, RREF);
  }

  LastTimeTemp = GetCurrentTime();
}





//------------------------------------------------------------------
//Other sensors
//------------------------------------------------------------------
void ReadBatteryVoltages() {
  float DCVoltageDN = ReadAnalog(50, VoltageSensor);
  float RTCVoltageDN = ReadAnalog(50, RTCBattery);

  LastDCVoltage = 3.8 * ConversionFactor * DCVoltageDN - 1.2;
  LastTimeDCVoltage = GetCurrentTime();

  LastRTCVoltage = ConversionFactor * RTCVoltageDN;
  LastTimeRTCVoltage = LastTimeDCVoltage;

  if (LastDCVoltage < 10.5) {
    AddWarningToList(5);
  }

  if (LastRTCVoltage < 2.3) {
    AddWarningToList(1);
  }
}


  //------------------------------------------------------------------
  //EEPROM functions
  //------------------------------------------------------------------
  int GetFromEEPROMStreamOnBootUSB() {
    int Value = EEPROM.read(4);
    if (0 > Value || Value >= 2) {
      Value = 0;
      EEPROM.update(4, Value);
    }
    return Value;
  }

  int GetFromEEPROMStreamOnBootRS232() {
    int Value = EEPROM.read(5);
    if (0 > Value || Value >= 2) {
      Value = 0;
      EEPROM.update(5, Value);
    }
    return Value;
  }

  char GetFromEEPROMUnits() {
    char Value = EEPROM.read(0);
    if (Value != 'I' && Value != 'M') {
      Value = 'I';
      EEPROM.update(0, Value);
    }
    return Value;
  }

  //------------------------------------------------------------------
  //Helper functions
  //------------------------------------------------------------------
  void(* resetFunc) (void) = 0;  // declare reset fuction at address 0

  String StatesForOutput(int State) {
    String Value = "Off";
    if (State == 1) {
      Value = "On";
    }
    return Value;
  }

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

  void ForceCompleteUpdateOfAllStates() {
    
    ReadBatteryVoltages();
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

  void serialRS232P1() {
    while (RS232P1.available()) {
      // get the new byte:
      char inChar = (char)RS232P1.read();
      // add it to the inputString:
      inputStringRS232P1 += inChar;
      // if the incoming character is a carriage return, set a flag so the main loop can
      // do something about it:
      if (inChar == '\r') {
        stringCompleteRS232P1 = true;
      }
    }
  }

  void serialRS232P2() {
    while (RS232P2.available()) {
      // get the new byte:
      char inChar = (char)RS232P2.read();
      // add it to the inputString:
      inputStringRS232P2 += inChar;
      // if the incoming character is a carriage return, set a flag so the main loop can
      // do something about it:
      if (inChar == '\r') {
        stringCompleteRS232P2 = true;
      }
    }
  }

  void BroadCast(String Message) {
    SendItOut(Message, 0);
    SendItOut(Message, 1);
    SendItOut(Message, 2);
  }

  void CurrentSerialPort(int WhichPort) {
    if (WhichPort == 0) {
      USBSerial.println("%R,Current Port,USB");
    }
    if (WhichPort == 1) {
      RS232P1.println("%R,Current Port,USB");
    }
    if (WhichPort == 2) {
      RS232P2.println("%R,Current Port,USB");
    }

  }

  void SendItOut(String Message, int WhichPort) {
    if (WhichPort == 0) {
      USBSerial.println(Message);
    }
    if (WhichPort == 1) {
      RS232P1.println(Message);
    }
    if (WhichPort == 2) {
      RS232P2.println(Message);
    }
  }

  //------------------------------------------------------------------
  //Serial Output
  //------------------------------------------------------------------
  void OutputAllData(int WhichPort) {
    GetDeviceInfo(WhichPort);
    GetSystemTime(WhichPort);
    AllWarningMessages(WhichPort);
    GetStreamingState(WhichPort);
    GetUnits(WhichPort);
    GetDCBatteryVoltage(WhichPort);
    GetRTCBatteryVotlage(WhichPort);
    GetHeadUnitTemp(WhichPort);
    GetStreamingOnBoot(WhichPort);
    GetStreamingState(WhichPort);
  }

  void OutputLiveData(int WhichPort) {
    GetDCBatteryVoltage(WhichPort);
    GetRTCBatteryVotlage(WhichPort);
    GetHeadUnitTemp(WhichPort);
    GetStreamingOnBoot(WhichPort);
    GetStreamingState(WhichPort);
  }

  void GetDCBatteryVoltage(int WhichPort) {
    SendItOut("%R," + LastTimeDCVoltage + ",VDC," + LastDCVoltage, WhichPort);
  }

  void GetRTCBatteryVotlage(int WhichPort) {
    SendItOut("%R," + LastTimeRTCVoltage + ",RTCBattery," + LastRTCVoltage, WhichPort);
  }

  void GetHeadUnitTemp(int WhichPort) {
    SendItOut("%R," + LastTimeRTCTemp + ",Head Unit Temp,Units," + TempUnits + "," + LastRTCTemp, WhichPort);
  }

  void GetUnits(int WhichPort) {
    SendItOut("%R,Units," + String(Units), WhichPort);
  }

  void GetDeviceInfo(int WhichPort) {
    SendItOut("%R," + DeviceName + "," + FWVersion, WhichPort);
  }

  void GetStreamingState(int WhichPort) {
    SendItOut("%R,StreamingData,USB," + StatesForOutput(StreamingDataUSB) + ",RS232," +
              StatesForOutput(StreamingDataRS232) , WhichPort);
  }

  void GetSystemTime(int WhichPort) {
    SendItOut("%R,System Time," + GetCurrentTime(), WhichPort);
  }

  void GetStreamingOnBoot(int WhichPort) {
    SendItOut("%R,Streaming Data on boot,USB," + StatesForOutput(GetFromEEPROMStreamOnBootUSB()) + ",RS232," +
              StatesForOutput(GetFromEEPROMStreamOnBootRS232()) , WhichPort);
  }

  void GetAlarmStatus(int WhichPort) {
    String Message = "%R," + GetCurrentTime() + ",ALARM,Cleared";
    if (AlarmActive == true) {
      Message = "%R," + GetCurrentTime() + ",ALARM,Active";
    }
    SendItOut(Message, WhichPort);
  }

  void GetTemps(int WhichPort) {
    SendItOut("%R,Temps,Units," + + ",Water," + LastWaterTemp + "" + LastCarbTemp + "" + LastAmbientTemp , WhichPort);
  }
  //------------------------------------------------------------------
  //Alarm and Warnings
  //------------------------------------------------------------------
  void Error(int Number, int WhichPort) {
    const char* Errors[] = {"command not recognized", "command Parameter out of range", "command not supported on this platform",
                            "command can not be processed", "Invalid Parameter", "Invalid Command Format"
                           };
    SendItOut("%R,Error," + String(Errors[Number]), WhichPort);
  }

  void Warning() {
    if (WarningActive == true) {
      if (abs(millis() - WarningBlinkTimer) >  333) {
        WarningBlinkTimer = millis();
        if (digitalRead(WarningLED) == LOW) {
          digitalWrite(WarningLED, HIGH);
        } else {
          digitalWrite(WarningLED, LOW);
        }
      }
    }
  }

  void AddWarningToList(int WarningID) {
    WarningActive = true;
    if (ArrayOfWarnings[WarningID] != WarningID) {
      ArrayOfWarnings[WarningID] = WarningID;
      OutputWarningMessage(WarningID);
    }
  }

  void OutputWarningMessage(int ID) {
    if (ArrayOfWarnings[ID] != 0) {
      String Message = "";
      switch (ID) {
        case 1:
          Message = "RTC Battery voltage is low";
          break;
        case 2:
          Message = "One of the holding tanks is getting full";
          break;
        case 3:
          Message = "";
          break;
        case 4:
          Message = "";
          break;
        case 5:
          Message = "Battery voltage is low";
          break;
        case 6:
          Message = "";
          break;
        case 7:
          Message = "";
          break;
      }
      BroadCast("%R,Warning," + Message);
    }
  }

  void AllWarningMessages(int WhichPort) {
    if (WarningActive == true) {
      for (int i = 1; i <= TotalWarnings; i++) {
        if (ArrayOfWarnings[i] != -1) {
          OutputWarningMessage(i);
          WarningActive = true;
        }
      }
    }
    else {
      SendItOut("%R,Warning,Clear", WhichPort);
    }
  }

  void ALARM() {
    digitalWrite(AlarmOut, HIGH);
    AlarmActive = true;
    GetAlarmStatus(0);
    GetAlarmStatus(1);
    GetAlarmStatus(2);
  }

  void ResetAlarm() {
    digitalWrite(AlarmOut, LOW);
    if (AlarmActive == true) {
      AlarmActive = false;
      GetAlarmStatus(0);
      GetAlarmStatus(1);
    }
  }

  void ResetWarnings() {
    for (int i = 1; i <= TotalWarnings; i++) {
      ArrayOfWarnings[i] = -1;
    }
    WarningActive = false;
    digitalWrite(WarningLED, LOW);
  }

  void ResetAllAlarmsAndWarnings() {
    ResetAlarm();
    ResetWarnings();
  }
  //------------------------------------------------------------------
  //Commands
  //------------------------------------------------------------------
  void SetUnits(String Value, int WhichPort) {
    char CurrentUnits = Units;
    int Index = Value.indexOf("*");
    int End = Value.indexOf("\r");
    String ThingToTest = Value.substring(Index + 1, End - 1);
    if (ThingToTest.length() == 1) {
      bool CorrectParam = false;
      if (ThingToTest == "I") {
        Units = 'I';
        CorrectParam = true;
      }
      if (ThingToTest == "M") {
        Units = 'M';
        CorrectParam = true;
      }
      if (CorrectParam == true) {
        EEPROM.update(0, Units);
        GetUnits(WhichPort);
        if (CurrentUnits != Units) {
          ForceCompleteUpdateOfAllStates();
        }
      }
      else {
        Error(4, WhichPort);
      }
    }
    else {
      Error(1, WhichPort);
    }
    SetUnitsForOutput();
  }

  void SetStreamingData(String Value, int WhoToSet, int WhichPort) {
    int Index = Value.indexOf("*");
    int End = Value.indexOf("\r");
    String Start = Value.substring(Index + 1, End - 1);
    int SecondParam = Start.indexOf("*");
    String SerialPortName  = Start.substring(0, SecondParam);
    String State = Start.substring(SecondParam + 1, End - 1);
    bool CorrectParam = false;
    if (SerialPortName == "USB") {
      if (State == "OFF") {
        if (WhoToSet == 1) {
          EEPROM.update(4, 0);
        }
        StreamingDataUSB = false;
        CorrectParam = true;
      }
      if (State == "ON") {
        if (WhoToSet == 1) {
          EEPROM.update(4, 1);
        }
        StreamingDataUSB = true;
        CorrectParam = true;
      }
    }

    if (SerialPortName == "RS232") {
      if (State == "OFF") {
        if (WhoToSet == 1) {
          EEPROM.update(5, 0);
        }
        StreamingDataRS232 = false;
        CorrectParam = true;
      }
      if (State == "ON") {
        if (WhoToSet == 1) {
          EEPROM.update(5, 1);
        }
        StreamingDataRS232 = true;
        CorrectParam = true;
      }
    }

    if (CorrectParam == true) {
      if (WhoToSet == 1) {
        GetStreamingOnBoot(WhichPort);
      }
      GetStreamingState(WhichPort);
    }
    else {
      Error(4, WhichPort);
    }
  }

  void SetRTCDateTime(String Value, int WhichPort) {
    // need to set Year Month Day Hour Min Second
    //rtc.adjust(DateTime(year, month, day, hour, minute, seconds));
    //Example 8-19-2020 5:25:45 PM settime*2020:8:19:17:25:45\r
    bool CorrectParam = true;
    int Index = Value.indexOf("*");
    int End = Value.indexOf("\r");
    String ThingToTest = Value.substring(Index + 1, End);
    int NextIndex = -1, PreviousIndex;
    int TimeArray[6] = { -1, -1, -1, -1, -1, -1};

    for (int i = 0; i < 6; i++) {
      NextIndex = ThingToTest.indexOf(":");
      if (NextIndex != PreviousIndex || NextIndex == 2) {
        TimeArray[i] = ThingToTest.substring(0, NextIndex).toInt();
        ThingToTest = ThingToTest.substring(NextIndex + 1);
        PreviousIndex = NextIndex;
      }
    }

    for (int i = 0; i < 6; i++) {
      //check that all the params are filled out.
      if (TimeArray[i] == -1) {
        CorrectParam = false;
      }
    }

    if (2021 > TimeArray[0]) {
      SendItOut("%R,Error,Can't set the year older than when i made this mess : " + String(TimeArray[0]), WhichPort);
      CorrectParam = false;
    }

    if (1 > TimeArray[1] ||  TimeArray[1] > 12) {
      SendItOut("%R,Error,Month 1-12 accepted : " + String(TimeArray[1]), WhichPort);
      CorrectParam = false;
    }

    if (1 > TimeArray[2] ||  TimeArray[2] > 31) {
      SendItOut("%R,Error,Date 1-31 accepted : " + String(TimeArray[2]), WhichPort);
      CorrectParam = false;
    }

    if (0 > TimeArray[3] ||  TimeArray[3] > 24) {
      SendItOut("%R,Error,Hour 0-23 accepted : " + String(TimeArray[3]), WhichPort);
      CorrectParam = false;
    }

    if (0 > TimeArray[4] || TimeArray[4] >= 60) {
      SendItOut("%R,Error,Min 0-59 accepted : " + String(TimeArray[4]), WhichPort);
      CorrectParam = false;
    }

    if (0 > TimeArray[5] ||  TimeArray[5] >= 60) {
      SendItOut("%R,Error,Sec 0-59 accepted : " + String(TimeArray[5]), WhichPort);
      CorrectParam = false;
    }

    if (CorrectParam == true) {
      rtc.adjust(DateTime(TimeArray[0], TimeArray[1], TimeArray[2], TimeArray[3], TimeArray[4], TimeArray[5]));
      delay(100);
      GetSystemTime(WhichPort);
    }
    else {
      Error(4, WhichPort);
    }
  }

  /*
    SCC = start command character
    case 1 - no SCC found and there is data in the buffer - dump the buffer
    case 2 - SCC is found and not at position 0 - trim the buffer up to the SCC and insert error
    case 3 - SCC is found and at position 0  - process command
    case 4 - SCC is found and no delimiter found and there is data in the buffer  - add back to the buffer
    case 5 - SCC is found n delimiter found and another scc is found trim up to the second
    case 6 - No SCC and No Delimiter and there is data in teh buffer - dump the buffer
    case 7 - Valid SSC and Delimiter is found but the command is not in the list of commands - tell the user
  */

  String PainlessInstructionSet(String & TestString, int WhichPort) {
    int Search = 1;
    while (Search == 1) {
      bool ParamCommandCalled = false;
      bool CommandCalled = false;
      int FindStart = TestString.indexOf('%');
      int Param = TestString.indexOf('*');
      int FindEnd = TestString.indexOf('\r');
      if (TestString != "") {
        if (FindStart != -1) { //case 1
          if (FindStart != 0) { //case 2
            //Serial.println("PIS Case 2");
            SendItOut("%R,Error,BAD Command Format No Start or Stop Delimiters", WhichPort);
            TestString.remove(0, FindStart);
          }
          else { //Case 3 & Case 5 & Case 4
            String Case5Test = TestString.substring(FindStart + 1);
            int FindStart1 = Case5Test.indexOf('%');
            int FindEnd1 = Case5Test.indexOf('\r');
            if ((FindEnd1 > FindStart1) && (FindStart1 != -1)) {
              SendItOut("%R,Error,BAD Command Format - No End Delimiter", WhichPort);
              //Serial.println("PIS Case 5");
              TestString.remove(0, FindStart1 + 1);
            }
            else {
              if (FindEnd != -1 || FindEnd1 != -1) {
                //Serial.println("PIS Case 3");
                String CommandCandidate = TestString.substring(FindStart + 1, FindEnd);
                CommandCandidate.toUpperCase();
                if ((Param < FindEnd) && Param != -1) {
                  for (int i = 0; i < (sizeof(ParameterCommands) / sizeof(int)); i++)
                  {
                    //Serial.println("PIS Case 3A");
                    String ParamHeader = CommandCandidate.substring(FindStart, Param - 1);
                    ParamHeader.toUpperCase();
                    if (ParamHeader == ParameterCommands[i]) {
                      ParamCommandToCall(i, CommandCandidate, WhichPort);
                      ParamCommandCalled = true;
                    }
                  }
                }
                else {
                  for (int i = 0; i < (sizeof(AcceptedCommands) / sizeof(int)); i++)
                  {
                    //Non Parameter Commands
                    if (CommandCandidate == AcceptedCommands[i]) {
                      //Serial.println("PIS Case 3B");
                      CommandToCall(i, WhichPort);
                      CommandCalled = true;
                    }
                  }
                }
                if (CommandCalled == false && ParamCommandCalled == false) {
                  Serial.println("PIS Case 7");
                  SendItOut("%R,Error,Command not recognized", WhichPort);
                }
                TestString.remove(0, FindEnd + 1);
              }
              else {
                //Serial.println("PIS Case 4");
                Search = 0;
              }
            }
          }
        }
        else { //Case 1 Dump the buffer if ther is no start character is found
          //Serial.println("PIS Case 1");
          Search = 0;
          TestString = "";
          SendItOut("%R," + GetCurrentTime() + ",Error,BAD Command Format - No Start Command Character", WhichPort);
        }
      }//if TestString is empty
      else { //Exit Search While if Buffer is empty
        Search = 0;
        //Serial.println("PIS Case 6");
      }
    }//End of Search While
    return TestString;
  }//End of PIS Function

  void ParamCommandToCall(int Index, String CommandRaw, int WhichPort) {
    switch (Index)
    {
      case 0:
        //Set Units
        SetUnits(CommandRaw, WhichPort);
        break;
      case 1:
        //Set Streaming Data Output
        SetStreamingData(CommandRaw, 0, WhichPort);
        break;
      case 2:
        //Set RTC Datetime
        SetRTCDateTime(CommandRaw, WhichPort);
        break;
      case 3:
        //SET STREAMING ON BOOT
        SetStreamingData(CommandRaw, 1, WhichPort);
        break;
    }
  }

  void CommandToCall(int Index, int WhichPort) {
    switch (Index)
    {
      case 0:
        //UNITS
        GetUnits(WhichPort);
        break;
      case 1:
        //DEVICE INFORMATION
        GetDeviceInfo(WhichPort);
        break;
      case 2:
        //CAMPER DV VOLTAGE
        GetDCBatteryVoltage(WhichPort);
        break;
      case 3:
        //RTC BATTERY VOLTAGE
        GetRTCBatteryVotlage(WhichPort);
        break;
      case 4:
        //NTC TEMPS
        //GetNTCTemps(WhichPort);
        break;
      case 5:
        //HEAD UNIT TEMP
        GetHeadUnitTemp(WhichPort);
        break;
      case 6:
        //WARNING
        AllWarningMessages(WhichPort);
        break;
      case 7:
        //STREAMING
        GetStreamingState(WhichPort);
        break;
      case 8:
        //Get All Data at one go
        OutputAllData(WhichPort);
        break;
      case 9:
        //Force Update of all states
        ForceCompleteUpdateOfAllStates();
        BroadCast("%R," + GetCurrentTime() + ",All States Updated");
        break;
      case 10:
        //Reset Warnings
        ResetWarnings();
        BroadCast("%R," + GetCurrentTime() + ",Reset Warnings");
        break;
      case 11:
        //Reset All alarms and warnings
        ResetAllAlarmsAndWarnings();
        BroadCast("%R," + GetCurrentTime() + ",Reset All Alarms and Warnings");
        break;
      case 12:
        //Show System Time
        GetSystemTime(WhichPort);
        break;
      case 13:
        //Reboot the MCU
        RebootDisBitch();
        break;
      case 14:
        //reset to defaults
        MIBFLASH();
        break;
      case 15:
        //Streaming on boot
        GetStreamingOnBoot(WhichPort);
        break;
      case 16:
        //Status update for live system stuff
        OutputLiveData(WhichPort);
        break;
      case 17:
        //Which port you are communicating on
        CurrentSerialPort(WhichPort);
        break;
    }
  }
