EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 13
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 6149B726
P 1100 1850
AR Path="/6149B726" Ref="J?"  Part="1" 
AR Path="/61493C0E/6149B726" Ref="J1"  Part="1" 
F 0 "J1" H 1018 2067 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1018 1976 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1100 1850 50  0001 C CNN
F 3 "~" H 1100 1850 50  0001 C CNN
	1    1100 1850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6149B72C
P 1350 2050
AR Path="/6149B72C" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/6149B72C" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1350 1800 50  0001 C CNN
F 1 "GND" H 1355 1877 50  0000 C CNN
F 2 "" H 1350 2050 50  0001 C CNN
F 3 "" H 1350 2050 50  0001 C CNN
	1    1350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2050 1350 1950
Wire Wire Line
	1350 1950 1300 1950
$Comp
L SamacSys_Parts:BK_HTC-15M U?
U 1 1 6149B73A
P 2750 1850
AR Path="/6149B73A" Ref="U?"  Part="1" 
AR Path="/61493C0E/6149B73A" Ref="U1"  Part="1" 
F 0 "U1" H 3378 1846 50  0000 L CNN
F 1 "BK_HTC-15M" H 3378 1755 50  0000 L CNN
F 2 "SamacSys_Parts:BK_HTC-15M" H 3400 1950 50  0001 L CNN
F 3 "" H 3400 1850 50  0001 L CNN
F 4 "Fuse Holder PCB FUSE BLOCK" H 3400 1750 50  0001 L CNN "Description"
F 5 "" H 3400 1650 50  0001 L CNN "Height"
F 6 "504-HTC-15M" H 3400 1550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bussmann-Eaton/BK-HTC-15M?qs=xYgILgh9YcIcij8kQUilpQ%3D%3D" H 3400 1450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Eaton" H 3400 1350 50  0001 L CNN "Manufacturer_Name"
F 9 "BK/HTC-15M" H 3400 1250 50  0001 L CNN "Manufacturer_Part_Number"
	1    2750 1850
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:IRF9Z34NPBF Q?
U 1 1 6149B746
P 1800 2150
AR Path="/6149B746" Ref="Q?"  Part="1" 
AR Path="/61493C0E/6149B746" Ref="Q1"  Part="1" 
F 0 "Q1" V 2367 2250 50  0000 C CNN
F 1 "IRF9Z34NPBF" V 2276 2250 50  0000 C CNN
F 2 "SamacSys_Parts:TO254P469X1042X1967-3P" H 2250 2100 50  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irf9z34npbf.pdf?fileId=5546d462533600a40153561220af1ddd" H 2250 2000 50  0001 L CNN
F 4 "MOSFET MOSFT PCh -55V -17A 100mOhm 23.3nC" H 2250 1900 50  0001 L CNN "Description"
F 5 "4.69" H 2250 1800 50  0001 L CNN "Height"
F 6 "942-IRF9Z34NPBF" H 2250 1700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Infineon-IR/IRF9Z34NPBF?qs=9%252BKlkBgLFf16a%2FvlD%252BMCtQ%3D%3D" H 2250 1600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Infineon" H 2250 1500 50  0001 L CNN "Manufacturer_Name"
F 9 "IRF9Z34NPBF" H 2250 1400 50  0001 L CNN "Manufacturer_Part_Number"
	1    1800 2150
	0    1    -1   0   
$EndComp
Wire Wire Line
	1300 1850 1600 1850
$Comp
L Device:R R?
U 1 1 6149B74D
P 1800 2400
AR Path="/6149B74D" Ref="R?"  Part="1" 
AR Path="/61493C0E/6149B74D" Ref="R1"  Part="1" 
F 0 "R1" H 1870 2446 50  0000 L CNN
F 1 "4.7K" H 1870 2355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1730 2400 50  0001 C CNN
F 3 "~" H 1800 2400 50  0001 C CNN
	1    1800 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6149B753
P 1800 2650
AR Path="/6149B753" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/6149B753" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1800 2400 50  0001 C CNN
F 1 "GND" H 1805 2477 50  0000 C CNN
F 2 "" H 1800 2650 50  0001 C CNN
F 3 "" H 1800 2650 50  0001 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2250 1800 2150
Wire Wire Line
	1800 2650 1800 2550
Wire Wire Line
	2200 1850 2750 1850
$Comp
L power:+VDC #PWR?
U 1 1 6149B75C
P 3350 1800
AR Path="/6149B75C" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/6149B75C" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 3350 1700 50  0001 C CNN
F 1 "+VDC" H 3350 2075 50  0000 C CNN
F 2 "" H 3350 1800 50  0001 C CNN
F 3 "" H 3350 1800 50  0001 C CNN
	1    3350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1850 3350 1850
Wire Wire Line
	3350 1850 3350 1800
$Comp
L power:GND #PWR?
U 1 1 614AD122
P 5600 1500
AR Path="/614AD122" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD122" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD122" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 5600 1250 50  0001 C CNN
F 1 "GND" H 5605 1327 50  0000 C CNN
F 2 "" H 5600 1500 50  0001 C CNN
F 3 "" H 5600 1500 50  0001 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1600 5700 1600
Wire Wire Line
	5700 1600 5700 1750
Wire Wire Line
	6450 1500 6450 1600
$Comp
L power:+10V #PWR?
U 1 1 614AD12B
P 5150 1550
AR Path="/614AD12B" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD12B" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD12B" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 5150 1400 50  0001 C CNN
F 1 "+10V" H 5165 1723 50  0000 C CNN
F 2 "" H 5150 1550 50  0001 C CNN
F 3 "" H 5150 1550 50  0001 C CNN
	1    5150 1550
	1    0    0    -1  
$EndComp
Connection ~ 9200 1500
$Comp
L power:+10V #PWR?
U 1 1 614AD132
P 9200 1500
AR Path="/614AD132" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD132" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD132" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 9200 1350 50  0001 C CNN
F 1 "+10V" H 9215 1673 50  0000 C CNN
F 2 "" H 9200 1500 50  0001 C CNN
F 3 "" H 9200 1500 50  0001 C CNN
	1    9200 1500
	1    0    0    -1  
$EndComp
Connection ~ 8250 2100
Wire Wire Line
	8250 2100 8250 1900
$Comp
L power:+VDC #PWR?
U 1 1 614AD13A
P 8250 1900
AR Path="/614AD13A" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD13A" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD13A" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 8250 1800 50  0001 C CNN
F 1 "+VDC" H 8250 2175 50  0000 C CNN
F 2 "" H 8250 1900 50  0001 C CNN
F 3 "" H 8250 1900 50  0001 C CNN
	1    8250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1700 5150 1550
$Comp
L Device:CP C?
U 1 1 614AD141
P 9200 2700
AR Path="/614AD141" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD141" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD141" Ref="C5"  Part="1" 
F 0 "C5" H 9318 2746 50  0000 L CNN
F 1 "120uF" H 9318 2655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 9238 2550 50  0001 C CNN
F 3 "~" H 9200 2700 50  0001 C CNN
	1    9200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1650 7000 1500
Wire Wire Line
	5750 1650 7000 1650
Wire Wire Line
	5750 1800 5750 1650
Wire Wire Line
	5450 1800 5750 1800
Wire Wire Line
	5450 2200 5450 1800
Wire Wire Line
	5600 2200 5450 2200
Wire Wire Line
	5400 2300 5600 2300
Wire Wire Line
	5400 1750 5400 2300
Wire Wire Line
	5700 1750 5400 1750
Wire Wire Line
	8450 2200 8450 2850
Wire Wire Line
	7900 2200 8450 2200
Wire Wire Line
	8450 2850 8700 2850
Connection ~ 8450 2850
Wire Wire Line
	8450 3000 8450 2850
Wire Wire Line
	7900 2550 7900 2300
Wire Wire Line
	8250 2100 8250 2550
Wire Wire Line
	7900 2100 8250 2100
Connection ~ 8700 2850
Connection ~ 8250 2850
Wire Wire Line
	8250 2850 8450 2850
Wire Wire Line
	9200 2850 8700 2850
Wire Wire Line
	7900 2850 8250 2850
Wire Wire Line
	5600 2000 5150 2000
Wire Wire Line
	5300 2100 5600 2100
Wire Wire Line
	5300 2450 5300 2100
Wire Wire Line
	5300 3000 5300 2750
Connection ~ 7000 1500
Connection ~ 9200 2000
Wire Wire Line
	9200 1500 7000 1500
Wire Wire Line
	9200 2000 9200 1500
Wire Wire Line
	9200 2550 9200 2000
Wire Wire Line
	8700 2000 8900 2000
Connection ~ 8700 2000
Wire Wire Line
	7900 2000 8700 2000
Wire Wire Line
	8700 2250 8700 2000
Wire Wire Line
	7000 1150 6850 1150
Wire Wire Line
	7000 1500 7000 1150
Wire Wire Line
	6850 1500 7000 1500
Wire Wire Line
	6450 1500 6350 1500
Connection ~ 6450 1500
Wire Wire Line
	6450 1150 6450 1500
Wire Wire Line
	6550 1150 6450 1150
Wire Wire Line
	6550 1500 6450 1500
Wire Wire Line
	6050 1500 5600 1500
$Comp
L Device:R R?
U 1 1 614AD173
P 5150 1850
AR Path="/614AD173" Ref="R?"  Part="1" 
AR Path="/614516B8/614AD173" Ref="R?"  Part="1" 
AR Path="/61493C0E/614AD173" Ref="R2"  Part="1" 
F 0 "R2" H 5220 1896 50  0000 L CNN
F 1 "4.7K" H 5220 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5080 1850 50  0001 C CNN
F 3 "~" H 5150 1850 50  0001 C CNN
	1    5150 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 614AD179
P 6700 1500
AR Path="/614AD179" Ref="R?"  Part="1" 
AR Path="/614516B8/614AD179" Ref="R?"  Part="1" 
AR Path="/61493C0E/614AD179" Ref="R4"  Part="1" 
F 0 "R4" V 6907 1500 50  0000 C CNN
F 1 "7.5K" V 6816 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6630 1500 50  0001 C CNN
F 3 "~" H 6700 1500 50  0001 C CNN
	1    6700 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614AD17F
P 5300 3000
AR Path="/614AD17F" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD17F" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD17F" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 5300 2750 50  0001 C CNN
F 1 "GND" H 5305 2827 50  0000 C CNN
F 2 "" H 5300 3000 50  0001 C CNN
F 3 "" H 5300 3000 50  0001 C CNN
	1    5300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614AD185
P 8450 3000
AR Path="/614AD185" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD185" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD185" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 8450 2750 50  0001 C CNN
F 1 "GND" H 8455 2827 50  0000 C CNN
F 2 "" H 8450 3000 50  0001 C CNN
F 3 "" H 8450 3000 50  0001 C CNN
	1    8450 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 614AD18B
P 6700 1150
AR Path="/614AD18B" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD18B" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD18B" Ref="C2"  Part="1" 
F 0 "C2" H 6815 1196 50  0000 L CNN
F 1 "C" H 6815 1105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 6738 1000 50  0001 C CNN
F 3 "~" H 6700 1150 50  0001 C CNN
	1    6700 1150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 614AD191
P 5300 2600
AR Path="/614AD191" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD191" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD191" Ref="C1"  Part="1" 
F 0 "C1" H 5415 2646 50  0000 L CNN
F 1 "0.1uF" H 5415 2555 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 5338 2450 50  0001 C CNN
F 3 "~" H 5300 2600 50  0001 C CNN
	1    5300 2600
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:1N5817 D?
U 1 1 614AD19D
P 8700 2250
AR Path="/614AD19D" Ref="D?"  Part="1" 
AR Path="/614516B8/614AD19D" Ref="D?"  Part="1" 
AR Path="/61493C0E/614AD19D" Ref="D1"  Part="1" 
F 0 "D1" V 8954 2380 50  0000 L CNN
F 1 "1N5817" V 9045 2380 50  0000 L CNN
F 2 "SamacSys_Parts:DIOAD1414W86L464D238" H 9150 2250 50  0001 L CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/CD00001625.pdf" H 9150 2150 50  0001 L CNN
F 4 "1N5817, Schottky Diode,  1A max, 20V, 2-Pin, DO-41" H 9150 2050 50  0001 L CNN "Description"
F 5 "" H 9150 1950 50  0001 L CNN "Height"
F 6 "511-1N5817" H 9150 1850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/1N5817?qs=JV7lzlMm3yKNnxZdh%252BSMnw%3D%3D" H 9150 1750 50  0001 L CNN "Mouser Price/Stock"
F 8 "STMicroelectronics" H 9150 1650 50  0001 L CNN "Manufacturer_Name"
F 9 "1N5817" H 9150 1550 50  0001 L CNN "Manufacturer_Part_Number"
	1    8700 2250
	0    1    1    0   
$EndComp
$Comp
L Device:L L?
U 1 1 614AD1A3
P 9050 2000
AR Path="/614AD1A3" Ref="L?"  Part="1" 
AR Path="/614516B8/614AD1A3" Ref="L?"  Part="1" 
AR Path="/61493C0E/614AD1A3" Ref="L1"  Part="1" 
F 0 "L1" V 9240 2000 50  0000 C CNN
F 1 "100mH" V 9149 2000 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L9.5mm_D4.0mm_P15.24mm_Horizontal_Fastron_SMCC" H 9050 2000 50  0001 C CNN
F 3 "~" H 9050 2000 50  0001 C CNN
	1    9050 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 614AD1A9
P 8250 2700
AR Path="/614AD1A9" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD1A9" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD1A9" Ref="C4"  Part="1" 
F 0 "C4" H 8368 2746 50  0000 L CNN
F 1 "68uF" H 8368 2655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8288 2550 50  0001 C CNN
F 3 "~" H 8250 2700 50  0001 C CNN
	1    8250 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 614AD1AF
P 7900 2700
AR Path="/614AD1AF" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD1AF" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD1AF" Ref="C3"  Part="1" 
F 0 "C3" H 8015 2746 50  0000 L CNN
F 1 "0.1uF" H 8015 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 7938 2550 50  0001 C CNN
F 3 "~" H 7900 2700 50  0001 C CNN
	1    7900 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 614AD1B5
P 6200 1500
AR Path="/614AD1B5" Ref="R?"  Part="1" 
AR Path="/614516B8/614AD1B5" Ref="R?"  Part="1" 
AR Path="/61493C0E/614AD1B5" Ref="R3"  Part="1" 
F 0 "R3" V 6407 1500 50  0000 C CNN
F 1 "1k" V 6316 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6130 1500 50  0001 C CNN
F 3 "~" H 6200 1500 50  0001 C CNN
	1    6200 1500
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:LM2597MX-ADJ_NOPB IC?
U 1 1 614AD1C1
P 5600 2000
AR Path="/614AD1C1" Ref="IC?"  Part="1" 
AR Path="/614516B8/614AD1C1" Ref="IC?"  Part="1" 
AR Path="/61493C0E/614AD1C1" Ref="IC2"  Part="1" 
F 0 "IC2" H 6750 2265 50  0000 C CNN
F 1 "LM2597MX-ADJ_NOPB" H 6750 2174 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P600X175-8N" H 7750 2100 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/LM2597" H 7750 2000 50  0001 L CNN
F 4 "SIMPLE SWITCHER Power Converter 150 kHz 0.5A Step-Down Voltage Regulator" H 7750 1900 50  0001 L CNN "Description"
F 5 "1.75" H 7750 1800 50  0001 L CNN "Height"
F 6 "926-LM2597MXADJNOPB" H 7750 1700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/LM2597MX-ADJ-NOPB?qs=X1J7HmVL2ZEDIgwfzjXNjw%3D%3D" H 7750 1600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7750 1500 50  0001 L CNN "Manufacturer_Name"
F 9 "LM2597MX-ADJ/NOPB" H 7750 1400 50  0001 L CNN "Manufacturer_Part_Number"
	1    5600 2000
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:LM2670SX-5.0_NOPB IC?
U 1 1 614B79F0
P 1550 3900
AR Path="/614B79F0" Ref="IC?"  Part="1" 
AR Path="/61493C0E/614B79F0" Ref="IC1"  Part="1" 
F 0 "IC1" H 2300 4165 50  0000 C CNN
F 1 "LM2670SX-5.0_NOPB" H 2300 4074 50  0000 C CNN
F 2 "SamacSys_Parts:LM2670SX50NOPB" H 2900 4000 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/LM2670" H 2900 3900 50  0001 L CNN
F 4 "SIMPLE SWITCHER High Efficiency 3A Step-Down Voltage Regulator with Sync" H 2900 3800 50  0001 L CNN "Description"
F 5 "4.64" H 2900 3700 50  0001 L CNN "Height"
F 6 "926-LM2670SX50NOPB" H 2900 3600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/LM2670SX-50-NOPB/?qs=X1J7HmVL2ZHkBBcK6Id9eQ%3D%3D" H 2900 3500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 2900 3400 50  0001 L CNN "Manufacturer_Name"
F 9 "LM2670SX-5.0/NOPB" H 2900 3300 50  0001 L CNN "Manufacturer_Part_Number"
	1    1550 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614BAF40
P 1500 3950
AR Path="/614BAF40" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614BAF40" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614BAF40" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 1500 3700 50  0001 C CNN
F 1 "GND" H 1505 3777 50  0000 C CNN
F 2 "" H 1500 3950 50  0001 C CNN
F 3 "" H 1500 3950 50  0001 C CNN
	1    1500 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 614BC333
P 4050 4250
AR Path="/614BC333" Ref="R?"  Part="1" 
AR Path="/61493C0E/614BC333" Ref="R5"  Part="1" 
F 0 "R5" H 4120 4296 50  0000 L CNN
F 1 "4.7K" H 4120 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3980 4250 50  0001 C CNN
F 3 "~" H 4050 4250 50  0001 C CNN
	1    4050 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614BC339
P 4050 4500
AR Path="/614BC339" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614BC339" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 4050 4250 50  0001 C CNN
F 1 "GND" H 4055 4327 50  0000 C CNN
F 2 "" H 4050 4500 50  0001 C CNN
F 3 "" H 4050 4500 50  0001 C CNN
	1    4050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4500 4050 4400
Wire Wire Line
	3050 4100 4050 4100
Wire Wire Line
	3050 4200 3900 4200
Wire Wire Line
	3900 4200 3900 4400
Wire Wire Line
	3900 4400 4050 4400
Connection ~ 4050 4400
$Comp
L Device:C C?
U 1 1 614C0D33
P 3550 4600
AR Path="/614C0D33" Ref="C?"  Part="1" 
AR Path="/614516B8/614C0D33" Ref="C?"  Part="1" 
AR Path="/61493C0E/614C0D33" Ref="C8"  Part="1" 
F 0 "C8" H 3665 4646 50  0000 L CNN
F 1 "0.1uF" H 3665 4555 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 3588 4450 50  0001 C CNN
F 3 "~" H 3550 4600 50  0001 C CNN
	1    3550 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4450 3550 4300
Wire Wire Line
	3550 4300 3050 4300
$Comp
L power:+VDC #PWR?
U 1 1 614C3993
P 2400 5050
AR Path="/614C3993" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614C3993" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 2400 4950 50  0001 C CNN
F 1 "+VDC" H 2400 5325 50  0000 C CNN
F 2 "" H 2400 5050 50  0001 C CNN
F 3 "" H 2400 5050 50  0001 C CNN
	1    2400 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 614C526F
P 2750 5250
AR Path="/614C526F" Ref="C?"  Part="1" 
AR Path="/614516B8/614C526F" Ref="C?"  Part="1" 
AR Path="/61493C0E/614C526F" Ref="C6"  Part="1" 
F 0 "C6" H 2868 5296 50  0000 L CNN
F 1 "15uF" H 2868 5205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2788 5100 50  0001 C CNN
F 3 "~" H 2750 5250 50  0001 C CNN
	1    2750 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 614C81D8
P 3200 5250
AR Path="/614C81D8" Ref="C?"  Part="1" 
AR Path="/614516B8/614C81D8" Ref="C?"  Part="1" 
AR Path="/61493C0E/614C81D8" Ref="C7"  Part="1" 
F 0 "C7" H 3318 5296 50  0000 L CNN
F 1 "15uF" H 3318 5205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3238 5100 50  0001 C CNN
F 3 "~" H 3200 5250 50  0001 C CNN
	1    3200 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 614C9456
P 3650 5250
AR Path="/614C9456" Ref="C?"  Part="1" 
AR Path="/614516B8/614C9456" Ref="C?"  Part="1" 
AR Path="/61493C0E/614C9456" Ref="C9"  Part="1" 
F 0 "C9" H 3765 5296 50  0000 L CNN
F 1 "0.47uF" H 3765 5205 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 3688 5100 50  0001 C CNN
F 3 "~" H 3650 5250 50  0001 C CNN
	1    3650 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614CAB07
P 3200 5800
AR Path="/614CAB07" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614CAB07" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614CAB07" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 3200 5550 50  0001 C CNN
F 1 "GND" H 3205 5627 50  0000 C CNN
F 2 "" H 3200 5800 50  0001 C CNN
F 3 "" H 3200 5800 50  0001 C CNN
	1    3200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5050 2400 5100
Wire Wire Line
	2400 5100 2750 5100
Wire Wire Line
	2750 5100 3200 5100
Connection ~ 2750 5100
Wire Wire Line
	3200 5100 3650 5100
Connection ~ 3200 5100
Wire Wire Line
	3050 4400 3200 4400
Wire Wire Line
	3200 4400 3200 5100
Wire Wire Line
	2750 5400 2750 5750
Wire Wire Line
	2750 5750 3200 5750
Wire Wire Line
	3200 5750 3200 5800
Wire Wire Line
	3200 5750 3200 5400
Connection ~ 3200 5750
Wire Wire Line
	3200 5750 3650 5750
Wire Wire Line
	3650 5750 3650 5400
Wire Wire Line
	3050 4500 3050 4800
Wire Wire Line
	3050 4800 3550 4800
Wire Wire Line
	3550 4800 3550 4750
$Comp
L Device:L L?
U 1 1 614D7097
P 4350 4800
AR Path="/614D7097" Ref="L?"  Part="1" 
AR Path="/614516B8/614D7097" Ref="L?"  Part="1" 
AR Path="/61493C0E/614D7097" Ref="L2"  Part="1" 
F 0 "L2" V 4540 4800 50  0000 C CNN
F 1 "33mH" V 4449 4800 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L9.5mm_D4.0mm_P15.24mm_Horizontal_Fastron_SMCC" H 4350 4800 50  0001 C CNN
F 3 "~" H 4350 4800 50  0001 C CNN
	1    4350 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 4800 4100 4800
Connection ~ 3550 4800
$Comp
L SamacSys_Parts:SR305-TP D2
U 1 1 614DBF4D
P 4100 4700
F 0 "D2" V 4454 4830 50  0000 L CNN
F 1 "SR305-TP" V 4545 4830 50  0000 L CNN
F 2 "SamacSys_Parts:DIOAD2860W130L840D505" H 4600 4850 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/SR305-TP.pdf" H 4600 4750 50  0001 L CNN
F 4 "Schottky Diodes & Rectifiers Rectifier 50V 80A" H 4600 4650 50  0001 L CNN "Description"
F 5 "" H 4600 4550 50  0001 L CNN "Height"
F 6 "833-SR305-TP" H 4600 4450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=833-SR305-TP" H 4600 4350 50  0001 L CNN "Mouser Price/Stock"
F 8 "Micro Commercial Components (MCC)" H 4600 4250 50  0001 L CNN "Manufacturer_Name"
F 9 "SR305-TP" H 4600 4150 50  0001 L CNN "Manufacturer_Part_Number"
	1    4100 4700
	0    1    1    0   
$EndComp
Connection ~ 4100 4800
Wire Wire Line
	4100 4800 4200 4800
Wire Wire Line
	3650 5750 4100 5750
Wire Wire Line
	4100 5750 4100 5400
Connection ~ 3650 5750
$Comp
L Device:CP C?
U 1 1 614E4DC6
P 4700 5000
AR Path="/614E4DC6" Ref="C?"  Part="1" 
AR Path="/614516B8/614E4DC6" Ref="C?"  Part="1" 
AR Path="/61493C0E/614E4DC6" Ref="C10"  Part="1" 
F 0 "C10" H 4818 5046 50  0000 L CNN
F 1 "120uF" H 4818 4955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4738 4850 50  0001 C CNN
F 3 "~" H 4700 5000 50  0001 C CNN
	1    4700 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5750 4700 5750
Wire Wire Line
	4700 5750 4700 5150
Connection ~ 4100 5750
Wire Wire Line
	4700 4850 4700 4800
Wire Wire Line
	4700 4800 4500 4800
Wire Wire Line
	3050 4000 4700 4000
Wire Wire Line
	4700 4000 4700 4800
Connection ~ 4700 4800
Wire Wire Line
	1500 3950 1500 3900
Wire Wire Line
	1500 3900 1550 3900
$Comp
L power:+5VP #PWR021
U 1 1 614EEE89
P 4700 4000
F 0 "#PWR021" H 4700 3850 50  0001 C CNN
F 1 "+5VP" H 4715 4173 50  0000 C CNN
F 2 "" H 4700 4000 50  0001 C CNN
F 3 "" H 4700 4000 50  0001 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
Connection ~ 4700 4000
NoConn ~ 3050 3900
$Comp
L SamacSys_Parts:TL071CP IC18
U 1 1 616D61AC
P 7400 5000
F 0 "IC18" H 8200 5265 50  0000 C CNN
F 1 "TL071CP" H 8200 5174 50  0000 C CNN
F 2 "SamacSys_Parts:DIP794W53P254L959H508Q8N" H 8850 5100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071a.pdf" H 8850 5000 50  0001 L CNN
F 4 "Low-Noise JFET-Input General-Purpose Operational Amplifier" H 8850 4900 50  0001 L CNN "Description"
F 5 "5.08" H 8850 4800 50  0001 L CNN "Height"
F 6 "595-TL071CP" H 8850 4700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TL071CP/?qs=3FVjRv9mUZ%2FN1XJT5coqUQ%3D%3D" H 8850 4600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 8850 4500 50  0001 L CNN "Manufacturer_Name"
F 9 "TL071CP" H 8850 4400 50  0001 L CNN "Manufacturer_Part_Number"
	1    7400 5000
	1    0    0    -1  
$EndComp
NoConn ~ 7400 5000
NoConn ~ 9000 5300
NoConn ~ 9000 5000
$Comp
L power:+5VP #PWR067
U 1 1 616DE2CE
P 9100 5000
F 0 "#PWR067" H 9100 4850 50  0001 C CNN
F 1 "+5VP" H 9115 5173 50  0000 C CNN
F 2 "" H 9100 5000 50  0001 C CNN
F 3 "" H 9100 5000 50  0001 C CNN
	1    9100 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616E15BB
P 7400 5500
AR Path="/616E15BB" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/616E15BB" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/616E15BB" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 7400 5250 50  0001 C CNN
F 1 "GND" H 7405 5327 50  0000 C CNN
F 2 "" H 7400 5500 50  0001 C CNN
F 3 "" H 7400 5500 50  0001 C CNN
	1    7400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5100 9100 5100
Wire Wire Line
	9100 5100 9100 5000
Wire Wire Line
	9000 5200 9150 5200
Wire Wire Line
	9150 5200 9150 5700
Wire Wire Line
	9150 5700 7250 5700
Wire Wire Line
	7250 5700 7250 5100
Wire Wire Line
	7250 5100 7400 5100
$Comp
L Device:R R?
U 1 1 616ED8FE
P 6600 4850
AR Path="/616ED8FE" Ref="R?"  Part="1" 
AR Path="/61493C0E/616ED8FE" Ref="R23"  Part="1" 
F 0 "R23" H 6670 4896 50  0000 L CNN
F 1 "4.7K" H 6670 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6530 4850 50  0001 C CNN
F 3 "~" H 6600 4850 50  0001 C CNN
	1    6600 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 616EFFDF
P 6600 5250
AR Path="/616EFFDF" Ref="R?"  Part="1" 
AR Path="/61493C0E/616EFFDF" Ref="R24"  Part="1" 
F 0 "R24" H 6670 5296 50  0000 L CNN
F 1 "4.7K" H 6670 5205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6530 5250 50  0001 C CNN
F 3 "~" H 6600 5250 50  0001 C CNN
	1    6600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5300 7400 5400
Wire Wire Line
	6600 5400 7400 5400
Connection ~ 7400 5400
Wire Wire Line
	7400 5400 7400 5500
Wire Wire Line
	6600 5100 6600 5050
Wire Wire Line
	6600 4700 6600 4550
$Comp
L Device:R R?
U 1 1 61700E61
P 9150 5850
AR Path="/61700E61" Ref="R?"  Part="1" 
AR Path="/61493C0E/61700E61" Ref="R25"  Part="1" 
F 0 "R25" H 9220 5896 50  0000 L CNN
F 1 "4.7K" H 9220 5805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9080 5850 50  0001 C CNN
F 3 "~" H 9150 5850 50  0001 C CNN
	1    9150 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61703A1E
P 9150 6100
AR Path="/61703A1E" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/61703A1E" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/61703A1E" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 9150 5850 50  0001 C CNN
F 1 "GND" H 9155 5927 50  0000 C CNN
F 2 "" H 9150 6100 50  0001 C CNN
F 3 "" H 9150 6100 50  0001 C CNN
	1    9150 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 6100 9150 6000
Wire Wire Line
	7400 5200 6950 5200
Wire Wire Line
	6950 5200 6950 5050
Wire Wire Line
	6950 5050 6600 5050
Connection ~ 6600 5050
Wire Wire Line
	6600 5050 6600 5000
Text HLabel 9150 5200 2    50   Input ~ 0
VoltageSensorOut
$Comp
L power:+VDC #PWR?
U 1 1 614AFFCD
P 6600 4550
AR Path="/614AFFCD" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AFFCD" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 6600 4450 50  0001 C CNN
F 1 "+VDC" H 6600 4825 50  0000 C CNN
F 2 "" H 6600 4550 50  0001 C CNN
F 3 "" H 6600 4550 50  0001 C CNN
	1    6600 4550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
