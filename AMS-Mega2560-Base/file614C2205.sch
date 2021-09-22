EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 13
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
P 2100 2350
AR Path="/614C7E9E" Ref="IC?"  Part="1" 
AR Path="/614C2206/614C7E9E" Ref="IC16"  Part="1" 
F 0 "IC16" H 2650 2615 50  0000 C CNN
F 1 "CD74HC4050ME4" H 2650 2524 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P600X175-16N" H 3050 2450 50  0001 L CNN
F 3 "https://www.ti.com/lit/pdf/MPDS178" H 3050 2350 50  0001 L CNN
F 4 "Buffers & Line Drivers Hi-Spd CMOS Logic Hex Non-Inv Bfr" H 3050 2250 50  0001 L CNN "Description"
F 5 "1.75" H 3050 2150 50  0001 L CNN "Height"
F 6 "595-CD74HC4050ME4" H 3050 2050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/CD74HC4050ME4?qs=xFfolx0DHx14hqY1xeFnNQ%3D%3D" H 3050 1950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 3050 1850 50  0001 L CNN "Manufacturer_Name"
F 9 "CD74HC4050ME4" H 3050 1750 50  0001 L CNN "Manufacturer_Part_Number"
	1    2100 2350
	1    0    0    -1  
$EndComp
NoConn ~ 3200 2350
NoConn ~ 3200 2650
$Comp
L power:+3.3V #PWR075
U 1 1 614C8EA1
P 2100 2150
F 0 "#PWR075" H 2100 2000 50  0001 C CNN
F 1 "+3.3V" H 2115 2323 50  0000 C CNN
F 2 "" H 2100 2150 50  0001 C CNN
F 3 "" H 2100 2150 50  0001 C CNN
	1    2100 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR076
U 1 1 614C931C
P 2100 3250
F 0 "#PWR076" H 2100 3000 50  0001 C CNN
F 1 "GND" H 2105 3077 50  0000 C CNN
F 2 "" H 2100 3250 50  0001 C CNN
F 3 "" H 2100 3250 50  0001 C CNN
	1    2100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3250 2100 3050
Wire Wire Line
	2100 2350 2100 2150
Text HLabel 2000 2950 0    50   Input ~ 0
3.3MISO
Text HLabel 2000 2450 0    50   Input ~ 0
3.3SCLK
Text HLabel 2000 2850 0    50   Input ~ 0
5MISO
Text HLabel 2000 2550 0    50   Input ~ 0
5SCLK
$Comp
L SamacSys_Parts:CD74HC4050ME4 IC?
U 1 1 614CD52C
P 2100 4050
AR Path="/614CD52C" Ref="IC?"  Part="1" 
AR Path="/614C2206/614CD52C" Ref="IC17"  Part="1" 
F 0 "IC17" H 2650 4315 50  0000 C CNN
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
L power:+3.3V #PWR077
U 1 1 614CD534
P 2100 3850
F 0 "#PWR077" H 2100 3700 50  0001 C CNN
F 1 "+3.3V" H 2115 4023 50  0000 C CNN
F 2 "" H 2100 3850 50  0001 C CNN
F 3 "" H 2100 3850 50  0001 C CNN
	1    2100 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR078
U 1 1 614CD53A
P 2100 4950
F 0 "#PWR078" H 2100 4700 50  0001 C CNN
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
Text HLabel 2000 2750 0    50   Input ~ 0
5MOSI
Text HLabel 2000 2650 0    50   Input ~ 0
3.3MOSI
Wire Wire Line
	2100 2950 2000 2950
Wire Wire Line
	2100 2850 2000 2850
Wire Wire Line
	2000 2750 2100 2750
Wire Wire Line
	2100 2650 2000 2650
Wire Wire Line
	2000 2550 2100 2550
Wire Wire Line
	2100 2450 2000 2450
Text HLabel 3350 2950 2    50   Input ~ 0
3.3Water
Text HLabel 3350 3050 2    50   Input ~ 0
5Water
Text HLabel 3350 2750 2    50   Input ~ 0
3.3Lside
Text HLabel 3350 2850 2    50   Input ~ 0
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
Text HLabel 3350 2450 2    50   Input ~ 0
3.3Carb
Text HLabel 3350 2550 2    50   Input ~ 0
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
	3200 2450 3350 2450
Wire Wire Line
	3350 2550 3200 2550
Wire Wire Line
	3200 2750 3350 2750
Wire Wire Line
	3350 2850 3200 2850
Wire Wire Line
	3200 2950 3350 2950
Wire Wire Line
	3350 3050 3200 3050
$Comp
L SamacSys_Parts:2201778-1 J22
U 1 1 6158DF4E
P 4500 4550
F 0 "J22" H 5150 4815 50  0000 C CNN
F 1 "2201778-1" H 5150 4724 50  0000 C CNN
F 2 "SamacSys_Parts:22017781" H 5650 4650 50  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Customer+Drawing%7F2201778%7FB%7Fpdf%7FJapanese%7FJPN_CD_2201778_B.pdf%7F2201778-1" H 5650 4550 50  0001 L CNN
F 4 "TE CONNECTIVITY - 2201778-1 - CONNECTOR, MICROSD, PUSH PUSH - REEL" H 5650 4450 50  0001 L CNN "Description"
F 5 "1.95" H 5650 4350 50  0001 L CNN "Height"
F 6 "571-2201778-1" H 5650 4250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/2201778-1?qs=%2F6W%2F9%2FHWvcBMWWw9w8oBng%3D%3D" H 5650 4150 50  0001 L CNN "Mouser Price/Stock"
F 8 "TE Connectivity" H 5650 4050 50  0001 L CNN "Manufacturer_Name"
F 9 "2201778-1" H 5650 3950 50  0001 L CNN "Manufacturer_Part_Number"
	1    4500 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR082
U 1 1 6158F461
P 5950 5450
F 0 "#PWR082" H 5950 5200 50  0001 C CNN
F 1 "GND" H 5955 5277 50  0000 C CNN
F 2 "" H 5950 5450 50  0001 C CNN
F 3 "" H 5950 5450 50  0001 C CNN
	1    5950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5450 5950 5250
Wire Wire Line
	5800 5250 5950 5250
Wire Wire Line
	5800 4750 5950 4750
Wire Wire Line
	5950 4750 5950 4850
Connection ~ 5950 5250
Wire Wire Line
	5800 5150 5950 5150
Connection ~ 5950 5150
Wire Wire Line
	5950 5150 5950 5250
Wire Wire Line
	5800 5050 5950 5050
Connection ~ 5950 5050
Wire Wire Line
	5950 5050 5950 5150
Wire Wire Line
	5800 4950 5950 4950
Connection ~ 5950 4950
Wire Wire Line
	5950 4950 5950 5050
Wire Wire Line
	5800 4850 5950 4850
Connection ~ 5950 4850
Wire Wire Line
	5950 4850 5950 4950
Text HLabel 4400 5150 0    50   Input ~ 0
3.3MISO
Text HLabel 4400 4950 0    50   Input ~ 0
3.3SCLK
Text HLabel 4400 4750 0    50   Input ~ 0
3.3MOSI
Wire Wire Line
	4500 5150 4400 5150
Wire Wire Line
	4500 4750 4400 4750
Wire Wire Line
	4500 4950 4400 4950
$Comp
L power:+3.3V #PWR079
U 1 1 615961B6
P 4300 4850
F 0 "#PWR079" H 4300 4700 50  0001 C CNN
F 1 "+3.3V" H 4315 5023 50  0000 C CNN
F 2 "" H 4300 4850 50  0001 C CNN
F 3 "" H 4300 4850 50  0001 C CNN
	1    4300 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 4850 4300 4850
Text HLabel 3350 4750 2    50   Input ~ 0
5VSDCS
Wire Wire Line
	3350 4750 3200 4750
$Comp
L power:GND #PWR083
U 1 1 61599398
P 6150 5200
F 0 "#PWR083" H 6150 4950 50  0001 C CNN
F 1 "GND" H 6155 5027 50  0000 C CNN
F 2 "" H 6150 5200 50  0001 C CNN
F 3 "" H 6150 5200 50  0001 C CNN
	1    6150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 61599C96
P 6150 4900
F 0 "R22" H 6220 4946 50  0000 L CNN
F 1 "R" H 6220 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 6080 4900 50  0001 C CNN
F 3 "~" H 6150 4900 50  0001 C CNN
	1    6150 4900
	1    0    0    -1  
$EndComp
Text HLabel 6150 4650 2    50   Input ~ 0
SDDetect
Wire Wire Line
	6150 5200 6150 5050
Wire Wire Line
	6150 4750 6150 4650
Wire Wire Line
	6150 4650 5800 4650
Wire Wire Line
	5800 4550 5850 4550
Wire Wire Line
	5850 4550 5850 4500
Wire Wire Line
	3200 4650 4500 4650
$Comp
L power:GND #PWR080
U 1 1 615C4730
P 4300 5050
F 0 "#PWR080" H 4300 4800 50  0001 C CNN
F 1 "GND" H 4305 4877 50  0000 C CNN
F 2 "" H 4300 5050 50  0001 C CNN
F 3 "" H 4300 5050 50  0001 C CNN
	1    4300 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 5050 4500 5050
NoConn ~ 4500 4550
NoConn ~ 4500 5250
$Comp
L power:+5VP #PWR?
U 1 1 6171D932
P 5850 4500
AR Path="/61493C0E/6171D932" Ref="#PWR?"  Part="1" 
AR Path="/614C2206/6171D932" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 5850 4350 50  0001 C CNN
F 1 "+5VP" H 5865 4673 50  0000 C CNN
F 2 "" H 5850 4500 50  0001 C CNN
F 3 "" H 5850 4500 50  0001 C CNN
	1    5850 4500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
