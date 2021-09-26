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
P 850 1650
AR Path="/6149B726" Ref="J?"  Part="1" 
AR Path="/61493C0E/6149B726" Ref="J1"  Part="1" 
F 0 "J1" H 768 1867 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 768 1776 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 850 1650 50  0001 C CNN
F 3 "~" H 850 1650 50  0001 C CNN
	1    850  1650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6149B72C
P 1100 1850
AR Path="/6149B72C" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/6149B72C" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1100 1600 50  0001 C CNN
F 1 "GND" H 1105 1677 50  0000 C CNN
F 2 "" H 1100 1850 50  0001 C CNN
F 3 "" H 1100 1850 50  0001 C CNN
	1    1100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1850 1100 1750
Wire Wire Line
	1100 1750 1050 1750
$Comp
L SamacSys_Parts:BK_HTC-15M U?
U 1 1 6149B73A
P 2500 1650
AR Path="/6149B73A" Ref="U?"  Part="1" 
AR Path="/61493C0E/6149B73A" Ref="U1"  Part="1" 
F 0 "U1" H 3128 1646 50  0000 L CNN
F 1 "BK_HTC-15M" H 3128 1555 50  0000 L CNN
F 2 "SamacSys_Parts:BK_HTC-15M" H 3150 1750 50  0001 L CNN
F 3 "" H 3150 1650 50  0001 L CNN
F 4 "Fuse Holder PCB FUSE BLOCK" H 3150 1550 50  0001 L CNN "Description"
F 5 "" H 3150 1450 50  0001 L CNN "Height"
F 6 "504-HTC-15M" H 3150 1350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bussmann-Eaton/BK-HTC-15M?qs=xYgILgh9YcIcij8kQUilpQ%3D%3D" H 3150 1250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Eaton" H 3150 1150 50  0001 L CNN "Manufacturer_Name"
F 9 "BK/HTC-15M" H 3150 1050 50  0001 L CNN "Manufacturer_Part_Number"
	1    2500 1650
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:IRF9Z34NPBF Q?
U 1 1 6149B746
P 1550 1950
AR Path="/6149B746" Ref="Q?"  Part="1" 
AR Path="/61493C0E/6149B746" Ref="Q1"  Part="1" 
F 0 "Q1" V 2117 2050 50  0000 C CNN
F 1 "IRF9Z34NPBF" V 2026 2050 50  0000 C CNN
F 2 "SamacSys_Parts:TO254P469X1042X1967-3P" H 2000 1900 50  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irf9z34npbf.pdf?fileId=5546d462533600a40153561220af1ddd" H 2000 1800 50  0001 L CNN
F 4 "MOSFET MOSFT PCh -55V -17A 100mOhm 23.3nC" H 2000 1700 50  0001 L CNN "Description"
F 5 "4.69" H 2000 1600 50  0001 L CNN "Height"
F 6 "942-IRF9Z34NPBF" H 2000 1500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Infineon-IR/IRF9Z34NPBF?qs=9%252BKlkBgLFf16a%2FvlD%252BMCtQ%3D%3D" H 2000 1400 50  0001 L CNN "Mouser Price/Stock"
F 8 "Infineon" H 2000 1300 50  0001 L CNN "Manufacturer_Name"
F 9 "IRF9Z34NPBF" H 2000 1200 50  0001 L CNN "Manufacturer_Part_Number"
	1    1550 1950
	0    1    -1   0   
$EndComp
Wire Wire Line
	1050 1650 1350 1650
$Comp
L Device:R R?
U 1 1 6149B74D
P 1550 2200
AR Path="/6149B74D" Ref="R?"  Part="1" 
AR Path="/61493C0E/6149B74D" Ref="R1"  Part="1" 
F 0 "R1" H 1620 2246 50  0000 L CNN
F 1 "4.7K" H 1620 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1480 2200 50  0001 C CNN
F 3 "~" H 1550 2200 50  0001 C CNN
	1    1550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6149B753
P 1550 2450
AR Path="/6149B753" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/6149B753" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1550 2200 50  0001 C CNN
F 1 "GND" H 1555 2277 50  0000 C CNN
F 2 "" H 1550 2450 50  0001 C CNN
F 3 "" H 1550 2450 50  0001 C CNN
	1    1550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2050 1550 1950
Wire Wire Line
	1550 2450 1550 2350
Wire Wire Line
	1950 1650 2500 1650
$Comp
L power:+VDC #PWR?
U 1 1 6149B75C
P 3100 1600
AR Path="/6149B75C" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/6149B75C" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 3100 1500 50  0001 C CNN
F 1 "+VDC" H 3100 1875 50  0000 C CNN
F 2 "" H 3100 1600 50  0001 C CNN
F 3 "" H 3100 1600 50  0001 C CNN
	1    3100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1650 3100 1650
Wire Wire Line
	3100 1650 3100 1600
$Comp
L power:GND #PWR?
U 1 1 614AD122
P 3900 1100
AR Path="/614AD122" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD122" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD122" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 3900 850 50  0001 C CNN
F 1 "GND" H 3905 927 50  0000 C CNN
F 2 "" H 3900 1100 50  0001 C CNN
F 3 "" H 3900 1100 50  0001 C CNN
	1    3900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1200 4000 1200
Wire Wire Line
	4000 1200 4000 1350
Wire Wire Line
	4750 1100 4750 1200
$Comp
L power:+10V #PWR?
U 1 1 614AD12B
P 3450 1150
AR Path="/614AD12B" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD12B" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD12B" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 3450 1000 50  0001 C CNN
F 1 "+10V" H 3465 1323 50  0000 C CNN
F 2 "" H 3450 1150 50  0001 C CNN
F 3 "" H 3450 1150 50  0001 C CNN
	1    3450 1150
	1    0    0    -1  
$EndComp
Connection ~ 7500 1100
$Comp
L power:+10V #PWR?
U 1 1 614AD132
P 7500 1100
AR Path="/614AD132" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD132" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD132" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 7500 950 50  0001 C CNN
F 1 "+10V" H 7515 1273 50  0000 C CNN
F 2 "" H 7500 1100 50  0001 C CNN
F 3 "" H 7500 1100 50  0001 C CNN
	1    7500 1100
	1    0    0    -1  
$EndComp
Connection ~ 6550 1700
Wire Wire Line
	6550 1700 6550 1500
$Comp
L power:+VDC #PWR?
U 1 1 614AD13A
P 6550 1500
AR Path="/614AD13A" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD13A" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD13A" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 6550 1400 50  0001 C CNN
F 1 "+VDC" H 6550 1775 50  0000 C CNN
F 2 "" H 6550 1500 50  0001 C CNN
F 3 "" H 6550 1500 50  0001 C CNN
	1    6550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1300 3450 1150
$Comp
L Device:CP C?
U 1 1 614AD141
P 7500 2300
AR Path="/614AD141" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD141" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD141" Ref="C5"  Part="1" 
F 0 "C5" H 7618 2346 50  0000 L CNN
F 1 "120uF" H 7618 2255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 7538 2150 50  0001 C CNN
F 3 "~" H 7500 2300 50  0001 C CNN
	1    7500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1250 5300 1100
Wire Wire Line
	4050 1250 5300 1250
Wire Wire Line
	4050 1400 4050 1250
Wire Wire Line
	3750 1400 4050 1400
Wire Wire Line
	3750 1800 3750 1400
Wire Wire Line
	3900 1800 3750 1800
Wire Wire Line
	3700 1900 3900 1900
Wire Wire Line
	3700 1350 3700 1900
Wire Wire Line
	4000 1350 3700 1350
Wire Wire Line
	6750 1800 6750 2450
Wire Wire Line
	6200 1800 6750 1800
Wire Wire Line
	6750 2450 7000 2450
Connection ~ 6750 2450
Wire Wire Line
	6750 2600 6750 2450
Wire Wire Line
	6200 2150 6200 1900
Wire Wire Line
	6550 1700 6550 2150
Wire Wire Line
	6200 1700 6550 1700
Connection ~ 7000 2450
Connection ~ 6550 2450
Wire Wire Line
	6550 2450 6750 2450
Wire Wire Line
	7500 2450 7000 2450
Wire Wire Line
	6200 2450 6550 2450
Wire Wire Line
	3900 1600 3450 1600
Wire Wire Line
	3600 1700 3900 1700
Wire Wire Line
	3600 2050 3600 1700
Wire Wire Line
	3600 2600 3600 2350
Connection ~ 5300 1100
Connection ~ 7500 1600
Wire Wire Line
	7500 1100 5300 1100
Wire Wire Line
	7500 1600 7500 1100
Wire Wire Line
	7500 2150 7500 1600
Wire Wire Line
	7000 1600 7200 1600
Connection ~ 7000 1600
Wire Wire Line
	6200 1600 7000 1600
Wire Wire Line
	7000 1850 7000 1600
Wire Wire Line
	5300 750  5150 750 
Wire Wire Line
	5300 1100 5300 750 
Wire Wire Line
	5150 1100 5300 1100
Wire Wire Line
	4750 1100 4650 1100
Connection ~ 4750 1100
Wire Wire Line
	4750 750  4750 1100
Wire Wire Line
	4850 750  4750 750 
Wire Wire Line
	4850 1100 4750 1100
Wire Wire Line
	4350 1100 3900 1100
$Comp
L Device:R R?
U 1 1 614AD173
P 3450 1450
AR Path="/614AD173" Ref="R?"  Part="1" 
AR Path="/614516B8/614AD173" Ref="R?"  Part="1" 
AR Path="/61493C0E/614AD173" Ref="R2"  Part="1" 
F 0 "R2" H 3520 1496 50  0000 L CNN
F 1 "4.7K" H 3520 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3380 1450 50  0001 C CNN
F 3 "~" H 3450 1450 50  0001 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 614AD179
P 5000 1100
AR Path="/614AD179" Ref="R?"  Part="1" 
AR Path="/614516B8/614AD179" Ref="R?"  Part="1" 
AR Path="/61493C0E/614AD179" Ref="R4"  Part="1" 
F 0 "R4" V 5207 1100 50  0000 C CNN
F 1 "7.5K" V 5116 1100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4930 1100 50  0001 C CNN
F 3 "~" H 5000 1100 50  0001 C CNN
	1    5000 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614AD17F
P 3600 2600
AR Path="/614AD17F" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD17F" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD17F" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 3600 2350 50  0001 C CNN
F 1 "GND" H 3605 2427 50  0000 C CNN
F 2 "" H 3600 2600 50  0001 C CNN
F 3 "" H 3600 2600 50  0001 C CNN
	1    3600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614AD185
P 6750 2600
AR Path="/614AD185" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614AD185" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AD185" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 6750 2350 50  0001 C CNN
F 1 "GND" H 6755 2427 50  0000 C CNN
F 2 "" H 6750 2600 50  0001 C CNN
F 3 "" H 6750 2600 50  0001 C CNN
	1    6750 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 614AD18B
P 5000 750
AR Path="/614AD18B" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD18B" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD18B" Ref="C2"  Part="1" 
F 0 "C2" H 5115 796 50  0000 L CNN
F 1 "C" H 5115 705 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 5038 600 50  0001 C CNN
F 3 "~" H 5000 750 50  0001 C CNN
	1    5000 750 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 614AD191
P 3600 2200
AR Path="/614AD191" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD191" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD191" Ref="C1"  Part="1" 
F 0 "C1" H 3715 2246 50  0000 L CNN
F 1 "0.1uF" H 3715 2155 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 3638 2050 50  0001 C CNN
F 3 "~" H 3600 2200 50  0001 C CNN
	1    3600 2200
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:1N5817 D?
U 1 1 614AD19D
P 7000 1850
AR Path="/614AD19D" Ref="D?"  Part="1" 
AR Path="/614516B8/614AD19D" Ref="D?"  Part="1" 
AR Path="/61493C0E/614AD19D" Ref="D1"  Part="1" 
F 0 "D1" V 7254 1980 50  0000 L CNN
F 1 "1N5817" V 7345 1980 50  0000 L CNN
F 2 "SamacSys_Parts:DIOAD1414W86L464D238" H 7450 1850 50  0001 L CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/CD00001625.pdf" H 7450 1750 50  0001 L CNN
F 4 "1N5817, Schottky Diode,  1A max, 20V, 2-Pin, DO-41" H 7450 1650 50  0001 L CNN "Description"
F 5 "" H 7450 1550 50  0001 L CNN "Height"
F 6 "511-1N5817" H 7450 1450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/1N5817?qs=JV7lzlMm3yKNnxZdh%252BSMnw%3D%3D" H 7450 1350 50  0001 L CNN "Mouser Price/Stock"
F 8 "STMicroelectronics" H 7450 1250 50  0001 L CNN "Manufacturer_Name"
F 9 "1N5817" H 7450 1150 50  0001 L CNN "Manufacturer_Part_Number"
	1    7000 1850
	0    1    1    0   
$EndComp
$Comp
L Device:L L?
U 1 1 614AD1A3
P 7350 1600
AR Path="/614AD1A3" Ref="L?"  Part="1" 
AR Path="/614516B8/614AD1A3" Ref="L?"  Part="1" 
AR Path="/61493C0E/614AD1A3" Ref="L1"  Part="1" 
F 0 "L1" V 7540 1600 50  0000 C CNN
F 1 "100mH" V 7449 1600 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L9.5mm_D4.0mm_P15.24mm_Horizontal_Fastron_SMCC" H 7350 1600 50  0001 C CNN
F 3 "~" H 7350 1600 50  0001 C CNN
	1    7350 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 614AD1A9
P 6550 2300
AR Path="/614AD1A9" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD1A9" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD1A9" Ref="C4"  Part="1" 
F 0 "C4" H 6668 2346 50  0000 L CNN
F 1 "68uF" H 6668 2255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6588 2150 50  0001 C CNN
F 3 "~" H 6550 2300 50  0001 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 614AD1AF
P 6200 2300
AR Path="/614AD1AF" Ref="C?"  Part="1" 
AR Path="/614516B8/614AD1AF" Ref="C?"  Part="1" 
AR Path="/61493C0E/614AD1AF" Ref="C3"  Part="1" 
F 0 "C3" H 6315 2346 50  0000 L CNN
F 1 "0.1uF" H 6315 2255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 6238 2150 50  0001 C CNN
F 3 "~" H 6200 2300 50  0001 C CNN
	1    6200 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 614AD1B5
P 4500 1100
AR Path="/614AD1B5" Ref="R?"  Part="1" 
AR Path="/614516B8/614AD1B5" Ref="R?"  Part="1" 
AR Path="/61493C0E/614AD1B5" Ref="R3"  Part="1" 
F 0 "R3" V 4707 1100 50  0000 C CNN
F 1 "1k" V 4616 1100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4430 1100 50  0001 C CNN
F 3 "~" H 4500 1100 50  0001 C CNN
	1    4500 1100
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:LM2597MX-ADJ_NOPB IC?
U 1 1 614AD1C1
P 3900 1600
AR Path="/614AD1C1" Ref="IC?"  Part="1" 
AR Path="/614516B8/614AD1C1" Ref="IC?"  Part="1" 
AR Path="/61493C0E/614AD1C1" Ref="IC2"  Part="1" 
F 0 "IC2" H 5050 1865 50  0000 C CNN
F 1 "LM2597MX-ADJ_NOPB" H 5050 1774 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P600X175-8N" H 6050 1700 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/LM2597" H 6050 1600 50  0001 L CNN
F 4 "SIMPLE SWITCHER Power Converter 150 kHz 0.5A Step-Down Voltage Regulator" H 6050 1500 50  0001 L CNN "Description"
F 5 "1.75" H 6050 1400 50  0001 L CNN "Height"
F 6 "926-LM2597MXADJNOPB" H 6050 1300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/LM2597MX-ADJ-NOPB?qs=X1J7HmVL2ZEDIgwfzjXNjw%3D%3D" H 6050 1200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 6050 1100 50  0001 L CNN "Manufacturer_Name"
F 9 "LM2597MX-ADJ/NOPB" H 6050 1000 50  0001 L CNN "Manufacturer_Part_Number"
	1    3900 1600
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:LM2670SX-5.0_NOPB IC?
U 1 1 614B79F0
P 900 3350
AR Path="/614B79F0" Ref="IC?"  Part="1" 
AR Path="/61493C0E/614B79F0" Ref="IC1"  Part="1" 
F 0 "IC1" H 1650 3615 50  0000 C CNN
F 1 "LM2670SX-5.0_NOPB" H 1650 3524 50  0000 C CNN
F 2 "SamacSys_Parts:LM2670SX50NOPB" H 2250 3450 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/LM2670" H 2250 3350 50  0001 L CNN
F 4 "SIMPLE SWITCHER High Efficiency 3A Step-Down Voltage Regulator with Sync" H 2250 3250 50  0001 L CNN "Description"
F 5 "4.64" H 2250 3150 50  0001 L CNN "Height"
F 6 "926-LM2670SX50NOPB" H 2250 3050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/LM2670SX-50-NOPB/?qs=X1J7HmVL2ZHkBBcK6Id9eQ%3D%3D" H 2250 2950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 2250 2850 50  0001 L CNN "Manufacturer_Name"
F 9 "LM2670SX-5.0/NOPB" H 2250 2750 50  0001 L CNN "Manufacturer_Part_Number"
	1    900  3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614BAF40
P 850 3400
AR Path="/614BAF40" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614BAF40" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614BAF40" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 850 3150 50  0001 C CNN
F 1 "GND" H 855 3227 50  0000 C CNN
F 2 "" H 850 3400 50  0001 C CNN
F 3 "" H 850 3400 50  0001 C CNN
	1    850  3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 614BC333
P 3400 3700
AR Path="/614BC333" Ref="R?"  Part="1" 
AR Path="/61493C0E/614BC333" Ref="R5"  Part="1" 
F 0 "R5" H 3470 3746 50  0000 L CNN
F 1 "4.7K" H 3470 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3330 3700 50  0001 C CNN
F 3 "~" H 3400 3700 50  0001 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614BC339
P 3400 3950
AR Path="/614BC339" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614BC339" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 3400 3700 50  0001 C CNN
F 1 "GND" H 3405 3777 50  0000 C CNN
F 2 "" H 3400 3950 50  0001 C CNN
F 3 "" H 3400 3950 50  0001 C CNN
	1    3400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3950 3400 3850
Wire Wire Line
	2400 3550 3400 3550
Wire Wire Line
	2400 3650 3250 3650
Wire Wire Line
	3250 3650 3250 3850
Wire Wire Line
	3250 3850 3400 3850
Connection ~ 3400 3850
$Comp
L Device:C C?
U 1 1 614C0D33
P 2900 4050
AR Path="/614C0D33" Ref="C?"  Part="1" 
AR Path="/614516B8/614C0D33" Ref="C?"  Part="1" 
AR Path="/61493C0E/614C0D33" Ref="C8"  Part="1" 
F 0 "C8" H 3015 4096 50  0000 L CNN
F 1 "0.1uF" H 3015 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 2938 3900 50  0001 C CNN
F 3 "~" H 2900 4050 50  0001 C CNN
	1    2900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3900 2900 3750
Wire Wire Line
	2900 3750 2400 3750
$Comp
L power:+VDC #PWR?
U 1 1 614C3993
P 1750 4500
AR Path="/614C3993" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614C3993" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 1750 4400 50  0001 C CNN
F 1 "+VDC" H 1750 4775 50  0000 C CNN
F 2 "" H 1750 4500 50  0001 C CNN
F 3 "" H 1750 4500 50  0001 C CNN
	1    1750 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 614C526F
P 2100 4700
AR Path="/614C526F" Ref="C?"  Part="1" 
AR Path="/614516B8/614C526F" Ref="C?"  Part="1" 
AR Path="/61493C0E/614C526F" Ref="C6"  Part="1" 
F 0 "C6" H 2218 4746 50  0000 L CNN
F 1 "15uF" H 2218 4655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2138 4550 50  0001 C CNN
F 3 "~" H 2100 4700 50  0001 C CNN
	1    2100 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 614C81D8
P 2550 4700
AR Path="/614C81D8" Ref="C?"  Part="1" 
AR Path="/614516B8/614C81D8" Ref="C?"  Part="1" 
AR Path="/61493C0E/614C81D8" Ref="C7"  Part="1" 
F 0 "C7" H 2668 4746 50  0000 L CNN
F 1 "15uF" H 2668 4655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2588 4550 50  0001 C CNN
F 3 "~" H 2550 4700 50  0001 C CNN
	1    2550 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 614C9456
P 3000 4700
AR Path="/614C9456" Ref="C?"  Part="1" 
AR Path="/614516B8/614C9456" Ref="C?"  Part="1" 
AR Path="/61493C0E/614C9456" Ref="C9"  Part="1" 
F 0 "C9" H 3115 4746 50  0000 L CNN
F 1 "0.47uF" H 3115 4655 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W3.6mm_P7.50mm_MKT" H 3038 4550 50  0001 C CNN
F 3 "~" H 3000 4700 50  0001 C CNN
	1    3000 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614CAB07
P 2550 5250
AR Path="/614CAB07" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/614CAB07" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614CAB07" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 2550 5000 50  0001 C CNN
F 1 "GND" H 2555 5077 50  0000 C CNN
F 2 "" H 2550 5250 50  0001 C CNN
F 3 "" H 2550 5250 50  0001 C CNN
	1    2550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4500 1750 4550
Wire Wire Line
	1750 4550 2100 4550
Wire Wire Line
	2100 4550 2550 4550
Connection ~ 2100 4550
Wire Wire Line
	2550 4550 3000 4550
Connection ~ 2550 4550
Wire Wire Line
	2400 3850 2550 3850
Wire Wire Line
	2550 3850 2550 4550
Wire Wire Line
	2100 4850 2100 5200
Wire Wire Line
	2100 5200 2550 5200
Wire Wire Line
	2550 5200 2550 5250
Wire Wire Line
	2550 5200 2550 4850
Connection ~ 2550 5200
Wire Wire Line
	2550 5200 3000 5200
Wire Wire Line
	3000 5200 3000 4850
Wire Wire Line
	2400 3950 2400 4250
Wire Wire Line
	2400 4250 2900 4250
Wire Wire Line
	2900 4250 2900 4200
$Comp
L Device:L L?
U 1 1 614D7097
P 3700 4250
AR Path="/614D7097" Ref="L?"  Part="1" 
AR Path="/614516B8/614D7097" Ref="L?"  Part="1" 
AR Path="/61493C0E/614D7097" Ref="L2"  Part="1" 
F 0 "L2" V 3890 4250 50  0000 C CNN
F 1 "33mH" V 3799 4250 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L9.5mm_D4.0mm_P15.24mm_Horizontal_Fastron_SMCC" H 3700 4250 50  0001 C CNN
F 3 "~" H 3700 4250 50  0001 C CNN
	1    3700 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 4250 3450 4250
Connection ~ 2900 4250
$Comp
L SamacSys_Parts:SR305-TP D2
U 1 1 614DBF4D
P 3450 4150
F 0 "D2" V 3804 4280 50  0000 L CNN
F 1 "SR305-TP" V 3895 4280 50  0000 L CNN
F 2 "SamacSys_Parts:DIOAD2860W130L840D505" H 3950 4300 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/SR305-TP.pdf" H 3950 4200 50  0001 L CNN
F 4 "Schottky Diodes & Rectifiers Rectifier 50V 80A" H 3950 4100 50  0001 L CNN "Description"
F 5 "" H 3950 4000 50  0001 L CNN "Height"
F 6 "833-SR305-TP" H 3950 3900 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=833-SR305-TP" H 3950 3800 50  0001 L CNN "Mouser Price/Stock"
F 8 "Micro Commercial Components (MCC)" H 3950 3700 50  0001 L CNN "Manufacturer_Name"
F 9 "SR305-TP" H 3950 3600 50  0001 L CNN "Manufacturer_Part_Number"
	1    3450 4150
	0    1    1    0   
$EndComp
Connection ~ 3450 4250
Wire Wire Line
	3450 4250 3550 4250
Wire Wire Line
	3000 5200 3450 5200
Wire Wire Line
	3450 5200 3450 4850
Connection ~ 3000 5200
$Comp
L Device:CP C?
U 1 1 614E4DC6
P 4050 4450
AR Path="/614E4DC6" Ref="C?"  Part="1" 
AR Path="/614516B8/614E4DC6" Ref="C?"  Part="1" 
AR Path="/61493C0E/614E4DC6" Ref="C10"  Part="1" 
F 0 "C10" H 4168 4496 50  0000 L CNN
F 1 "120uF" H 4168 4405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4088 4300 50  0001 C CNN
F 3 "~" H 4050 4450 50  0001 C CNN
	1    4050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5200 4050 5200
Wire Wire Line
	4050 5200 4050 4600
Connection ~ 3450 5200
Wire Wire Line
	4050 4300 4050 4250
Wire Wire Line
	4050 4250 3850 4250
Wire Wire Line
	2400 3450 4050 3450
Wire Wire Line
	4050 3450 4050 4250
Connection ~ 4050 4250
Wire Wire Line
	850  3400 850  3350
Wire Wire Line
	850  3350 900  3350
$Comp
L power:+5VP #PWR021
U 1 1 614EEE89
P 4050 3450
F 0 "#PWR021" H 4050 3300 50  0001 C CNN
F 1 "+5VP" H 4065 3623 50  0000 C CNN
F 2 "" H 4050 3450 50  0001 C CNN
F 3 "" H 4050 3450 50  0001 C CNN
	1    4050 3450
	1    0    0    -1  
$EndComp
Connection ~ 4050 3450
NoConn ~ 2400 3350
$Comp
L SamacSys_Parts:TL071CP IC18
U 1 1 616D61AC
P 8700 1600
F 0 "IC18" H 9500 1865 50  0000 C CNN
F 1 "TL071CP" H 9500 1774 50  0000 C CNN
F 2 "SamacSys_Parts:DIP794W53P254L959H508Q8N" H 10150 1700 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071a.pdf" H 10150 1600 50  0001 L CNN
F 4 "Low-Noise JFET-Input General-Purpose Operational Amplifier" H 10150 1500 50  0001 L CNN "Description"
F 5 "5.08" H 10150 1400 50  0001 L CNN "Height"
F 6 "595-TL071CP" H 10150 1300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TL071CP/?qs=3FVjRv9mUZ%2FN1XJT5coqUQ%3D%3D" H 10150 1200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 10150 1100 50  0001 L CNN "Manufacturer_Name"
F 9 "TL071CP" H 10150 1000 50  0001 L CNN "Manufacturer_Part_Number"
	1    8700 1600
	1    0    0    -1  
$EndComp
NoConn ~ 8700 1600
NoConn ~ 10300 1900
NoConn ~ 10300 1600
$Comp
L power:+5VP #PWR067
U 1 1 616DE2CE
P 10400 1600
F 0 "#PWR067" H 10400 1450 50  0001 C CNN
F 1 "+5VP" H 10415 1773 50  0000 C CNN
F 2 "" H 10400 1600 50  0001 C CNN
F 3 "" H 10400 1600 50  0001 C CNN
	1    10400 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 616E15BB
P 8700 2100
AR Path="/616E15BB" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/616E15BB" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/616E15BB" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 8700 1850 50  0001 C CNN
F 1 "GND" H 8705 1927 50  0000 C CNN
F 2 "" H 8700 2100 50  0001 C CNN
F 3 "" H 8700 2100 50  0001 C CNN
	1    8700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1700 10400 1700
Wire Wire Line
	10400 1700 10400 1600
Wire Wire Line
	10300 1800 10450 1800
Wire Wire Line
	10450 1800 10450 2300
Wire Wire Line
	10450 2300 8550 2300
Wire Wire Line
	8550 2300 8550 1700
Wire Wire Line
	8550 1700 8700 1700
$Comp
L Device:R R?
U 1 1 616ED8FE
P 7900 1450
AR Path="/616ED8FE" Ref="R?"  Part="1" 
AR Path="/61493C0E/616ED8FE" Ref="R23"  Part="1" 
F 0 "R23" H 7970 1496 50  0000 L CNN
F 1 "4.7K" H 7970 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7830 1450 50  0001 C CNN
F 3 "~" H 7900 1450 50  0001 C CNN
	1    7900 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 616EFFDF
P 7900 1850
AR Path="/616EFFDF" Ref="R?"  Part="1" 
AR Path="/61493C0E/616EFFDF" Ref="R24"  Part="1" 
F 0 "R24" H 7970 1896 50  0000 L CNN
F 1 "4.7K" H 7970 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7830 1850 50  0001 C CNN
F 3 "~" H 7900 1850 50  0001 C CNN
	1    7900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1900 8700 2000
Wire Wire Line
	7900 2000 8700 2000
Connection ~ 8700 2000
Wire Wire Line
	8700 2000 8700 2100
Wire Wire Line
	7900 1700 7900 1650
Wire Wire Line
	7900 1300 7900 1150
$Comp
L Device:R R?
U 1 1 61700E61
P 10450 2450
AR Path="/61700E61" Ref="R?"  Part="1" 
AR Path="/61493C0E/61700E61" Ref="R25"  Part="1" 
F 0 "R25" H 10520 2496 50  0000 L CNN
F 1 "4.7K" H 10520 2405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10380 2450 50  0001 C CNN
F 3 "~" H 10450 2450 50  0001 C CNN
	1    10450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61703A1E
P 10450 2700
AR Path="/61703A1E" Ref="#PWR?"  Part="1" 
AR Path="/614516B8/61703A1E" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/61703A1E" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 10450 2450 50  0001 C CNN
F 1 "GND" H 10455 2527 50  0000 C CNN
F 2 "" H 10450 2700 50  0001 C CNN
F 3 "" H 10450 2700 50  0001 C CNN
	1    10450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 2700 10450 2600
Wire Wire Line
	8700 1800 8250 1800
Wire Wire Line
	8250 1800 8250 1650
Wire Wire Line
	8250 1650 7900 1650
Connection ~ 7900 1650
Wire Wire Line
	7900 1650 7900 1600
Text HLabel 10450 1800 2    50   Input ~ 0
VoltageSensorOut
$Comp
L power:+VDC #PWR?
U 1 1 614AFFCD
P 7900 1150
AR Path="/614AFFCD" Ref="#PWR?"  Part="1" 
AR Path="/61493C0E/614AFFCD" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 7900 1050 50  0001 C CNN
F 1 "+VDC" H 7900 1425 50  0000 C CNN
F 2 "" H 7900 1150 50  0001 C CNN
F 3 "" H 7900 1150 50  0001 C CNN
	1    7900 1150
	1    0    0    -1  
$EndComp
Connection ~ 10450 2300
$Comp
L SamacSys_Parts:LM2597M-3.3_NOPB IC?
U 1 1 619EF1B2
P 7100 4350
F 0 "IC?" H 8250 4615 50  0000 C CNN
F 1 "LM2597M-3.3_NOPB" H 8250 4524 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 9250 4450 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/lm2597" H 9250 4350 50  0001 L CNN
F 4 "Texas Instruments LM2597M-3.3/NOPB, Step Down DC-DC Converter, 500mA, 8-Pin SOIC" H 9250 4250 50  0001 L CNN "Description"
F 5 "1.75" H 9250 4150 50  0001 L CNN "Height"
F 6 "926-LM2597M-33/NOPB" H 9250 4050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=926-LM2597M-33%2FNOPB" H 9250 3950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 9250 3850 50  0001 L CNN "Manufacturer_Name"
F 9 "LM2597M-3.3/NOPB" H 9250 3750 50  0001 L CNN "Manufacturer_Part_Number"
	1    7100 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
