EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 14
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
L SamacSys_Parts:CD74HC4050ME4 IC?
U 1 1 614C7E9E
P 2100 1500
AR Path="/614C7E9E" Ref="IC?"  Part="1" 
AR Path="/614C2206/614C7E9E" Ref="IC13"  Part="1" 
F 0 "IC13" H 2650 1765 50  0000 C CNN
F 1 "CD74HC4050ME4" H 2650 1674 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P600X175-16N" H 3050 1600 50  0001 L CNN
F 3 "https://www.ti.com/lit/pdf/MPDS178" H 3050 1500 50  0001 L CNN
F 4 "Buffers & Line Drivers Hi-Spd CMOS Logic Hex Non-Inv Bfr" H 3050 1400 50  0001 L CNN "Description"
F 5 "1.75" H 3050 1300 50  0001 L CNN "Height"
F 6 "595-CD74HC4050ME4" H 3050 1200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/CD74HC4050ME4?qs=xFfolx0DHx14hqY1xeFnNQ%3D%3D" H 3050 1100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 3050 1000 50  0001 L CNN "Manufacturer_Name"
F 9 "CD74HC4050ME4" H 3050 900 50  0001 L CNN "Manufacturer_Part_Number"
	1    2100 1500
	1    0    0    -1  
$EndComp
NoConn ~ 3200 1500
NoConn ~ 3200 1800
$Comp
L power:+3.3V #PWR081
U 1 1 614C8EA1
P 2100 1300
F 0 "#PWR081" H 2100 1150 50  0001 C CNN
F 1 "+3.3V" H 2115 1473 50  0000 C CNN
F 2 "" H 2100 1300 50  0001 C CNN
F 3 "" H 2100 1300 50  0001 C CNN
	1    2100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR082
U 1 1 614C931C
P 2100 2400
F 0 "#PWR082" H 2100 2150 50  0001 C CNN
F 1 "GND" H 2105 2227 50  0000 C CNN
F 2 "" H 2100 2400 50  0001 C CNN
F 3 "" H 2100 2400 50  0001 C CNN
	1    2100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2400 2100 2200
Wire Wire Line
	2100 1500 2100 1300
Text HLabel 2000 2100 0    50   Input ~ 0
3.3MISO
Text HLabel 2000 1600 0    50   Input ~ 0
3.3SCLK
Text HLabel 2000 2000 0    50   Input ~ 0
5MISO
Text HLabel 2000 1700 0    50   Input ~ 0
5SCLK
$Comp
L SamacSys_Parts:CD74HC4050ME4 IC?
U 1 1 614CD52C
P 2100 4050
AR Path="/614CD52C" Ref="IC?"  Part="1" 
AR Path="/614C2206/614CD52C" Ref="IC14"  Part="1" 
F 0 "IC14" H 2650 4315 50  0000 C CNN
F 1 "CD74HC4050ME4" H 2650 4224 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P600X175-16N" H 3050 4150 50  0001 L CNN
F 3 "https://www.ti.com/lit/pdf/MPDS178" H 3050 4050 50  0001 L CNN
F 4 "Buffers & Line Drivers Hi-Spd CMOS Logic Hex Non-Inv Bfr" H 3050 3950 50  0001 L CNN "Description"
F 5 "1.75" H 3050 3850 50  0001 L CNN "Height"
F 6 "595-CD74HC4050ME4" H 3050 3750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/CD74HC4050ME4?qs=xFfolx0DHx14hqY1xeFnNQ%3D%3D" H 3050 3650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 3050 3550 50  0001 L CNN "Manufacturer_Name"
F 9 "CD74HC4050ME4" H 3050 3450 50  0001 L CNN "Manufacturer_Part_Number"
	1    2100 4050
	1    0    0    -1  
$EndComp
NoConn ~ 3200 4050
NoConn ~ 3200 4350
$Comp
L power:+3.3V #PWR083
U 1 1 614CD534
P 2100 3850
F 0 "#PWR083" H 2100 3700 50  0001 C CNN
F 1 "+3.3V" H 2115 4023 50  0000 C CNN
F 2 "" H 2100 3850 50  0001 C CNN
F 3 "" H 2100 3850 50  0001 C CNN
	1    2100 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR084
U 1 1 614CD53A
P 2100 4950
F 0 "#PWR084" H 2100 4700 50  0001 C CNN
F 1 "GND" H 2105 4777 50  0000 C CNN
F 2 "" H 2100 4950 50  0001 C CNN
F 3 "" H 2100 4950 50  0001 C CNN
	1    2100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4950 2100 4750
Wire Wire Line
	2100 4050 2100 3850
Text HLabel 2000 1900 0    50   Input ~ 0
5MOSI
Text HLabel 2000 1800 0    50   Input ~ 0
3.3MOSI
Wire Wire Line
	2100 2100 2000 2100
Wire Wire Line
	2100 2000 2000 2000
Wire Wire Line
	2000 1900 2100 1900
Wire Wire Line
	2100 1800 2000 1800
Wire Wire Line
	2000 1700 2100 1700
Wire Wire Line
	2100 1600 2000 1600
Text HLabel 3350 2100 2    50   Input ~ 0
3.3Water
Text HLabel 3350 2200 2    50   Input ~ 0
5Water
Text HLabel 3350 1900 2    50   Input ~ 0
3.3Lside
Text HLabel 3350 2000 2    50   Input ~ 0
5Lside
Text HLabel 1950 4350 0    50   Input ~ 0
3.3Rside
Text HLabel 1950 4450 0    50   Input ~ 0
5Rside
Text HLabel 1950 4550 0    50   Input ~ 0
3.3Front
Text HLabel 1950 4650 0    50   Input ~ 0
5Front
Text HLabel 1950 4150 0    50   Input ~ 0
3.3Ambient
Text HLabel 1950 4250 0    50   Input ~ 0
5Ambient
Text HLabel 3350 1600 2    50   Input ~ 0
3.3Carb
Text HLabel 3350 1700 2    50   Input ~ 0
5Carb
Wire Wire Line
	1950 4150 2100 4150
Wire Wire Line
	1950 4250 2100 4250
Wire Wire Line
	1950 4350 2100 4350
Wire Wire Line
	1950 4450 2100 4450
Wire Wire Line
	1950 4550 2100 4550
Wire Wire Line
	1950 4650 2100 4650
Wire Wire Line
	3200 1600 3350 1600
Wire Wire Line
	3350 1700 3200 1700
Wire Wire Line
	3200 1900 3350 1900
Wire Wire Line
	3350 2000 3200 2000
Wire Wire Line
	3200 2100 3350 2100
Wire Wire Line
	3350 2200 3200 2200
$Comp
L power:GND #PWR089
U 1 1 6158F461
P 7900 2450
F 0 "#PWR089" H 7900 2200 50  0001 C CNN
F 1 "GND" H 7905 2277 50  0000 C CNN
F 2 "" H 7900 2450 50  0001 C CNN
F 3 "" H 7900 2450 50  0001 C CNN
	1    7900 2450
	0    1    -1   0   
$EndComp
Wire Wire Line
	7900 2450 8100 2450
Text HLabel 8000 2850 0    50   Input ~ 0
5VSDCS
$Comp
L Device:R R22
U 1 1 61599C96
P 7450 2800
F 0 "R22" H 7520 2846 50  0000 L CNN
F 1 "50K" H 7520 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 7380 2800 50  0001 C CNN
F 3 "~" H 7450 2800 50  0001 C CNN
	1    7450 2800
	1    0    0    -1  
$EndComp
Text HLabel 7850 2950 3    50   Input ~ 0
SDDetect
$Comp
L power:+5VP #PWR?
U 1 1 6171D932
P 8050 2200
AR Path="/61493C0E/6171D932" Ref="#PWR?"  Part="1" 
AR Path="/614C2206/6171D932" Ref="#PWR088"  Part="1" 
F 0 "#PWR088" H 8050 2050 50  0001 C CNN
F 1 "+5VP" H 8065 2373 50  0000 C CNN
F 2 "" H 8050 2200 50  0001 C CNN
F 3 "" H 8050 2200 50  0001 C CNN
	1    8050 2200
	1    0    0    -1  
$EndComp
Text HLabel 3350 4250 2    50   Input ~ 0
5PiTX
Text HLabel 3400 4450 2    50   Input ~ 0
5PIRX
Wire Wire Line
	3350 4250 3200 4250
Wire Wire Line
	3400 4450 3200 4450
$Comp
L Connector_Generic:Conn_01x03 J28
U 1 1 61867B8B
P 4250 4000
F 0 "J28" H 4330 4042 50  0000 L CNN
F 1 "Conn_01x03" H 4330 3951 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4250 4000 50  0001 C CNN
F 3 "~" H 4250 4000 50  0001 C CNN
	1    4250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4150 3600 4150
Wire Wire Line
	3600 4150 3600 3900
Wire Wire Line
	3600 3900 4050 3900
Wire Wire Line
	3200 4550 3800 4550
Wire Wire Line
	3800 4550 3800 4000
Wire Wire Line
	3800 4000 4050 4000
$Comp
L power:GND #PWR085
U 1 1 6186A7BF
P 4050 4200
F 0 "#PWR085" H 4050 3950 50  0001 C CNN
F 1 "GND" H 4055 4027 50  0000 C CNN
F 2 "" H 4050 4200 50  0001 C CNN
F 3 "" H 4050 4200 50  0001 C CNN
	1    4050 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4200 4050 4100
$Comp
L Connector_Generic:Conn_01x08 J29
U 1 1 6172B825
P 8300 2550
F 0 "J29" H 8380 2542 50  0000 L CNN
F 1 "Conn_01x08" H 8380 2451 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Horizontal" H 8300 2550 50  0001 C CNN
F 3 "~" H 8300 2550 50  0001 C CNN
	1    8300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2250 8050 2250
Wire Wire Line
	8050 2250 8050 2200
Text HLabel 8000 2650 0    50   Input ~ 0
5MISO
Text HLabel 8000 2550 0    50   Input ~ 0
5SCLK
Text HLabel 8000 2750 0    50   Input ~ 0
5MOSI
$Comp
L power:+5VP #PWR?
U 1 1 617443C2
P 7450 2500
AR Path="/61493C0E/617443C2" Ref="#PWR?"  Part="1" 
AR Path="/614C2206/617443C2" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 7450 2350 50  0001 C CNN
F 1 "+5VP" H 7465 2673 50  0000 C CNN
F 2 "" H 7450 2500 50  0001 C CNN
F 3 "" H 7450 2500 50  0001 C CNN
	1    7450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2500 7450 2650
Wire Wire Line
	7450 2950 8100 2950
Wire Wire Line
	8100 2850 8000 2850
Wire Wire Line
	8000 2750 8100 2750
Wire Wire Line
	8100 2650 8000 2650
Wire Wire Line
	8000 2550 8100 2550
NoConn ~ 8100 2350
NoConn ~ 3200 4650
NoConn ~ 3200 4750
$EndSCHEMATC
