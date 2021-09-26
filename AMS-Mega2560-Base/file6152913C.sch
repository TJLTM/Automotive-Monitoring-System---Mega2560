EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 13
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1550 2250 0    50   Input ~ 0
RSCOM1TX
Text HLabel 1550 2350 0    50   Input ~ 0
RSCOM1RX
Text HLabel 1550 2450 0    50   Input ~ 0
LED1GND
Text HLabel 1550 2550 0    50   Input ~ 0
LED2GND
Text HLabel 1550 2950 0    50   Input ~ 0
Input2
Text HLabel 1550 2850 0    50   Input ~ 0
Input1
Text HLabel 1550 2750 0    50   Input ~ 0
LoggingSwitchIN
Text HLabel 1550 2650 0    50   Input ~ 0
AudioSirenGND
Text HLabel 1550 3150 0    50   Input ~ 0
TTLCXom1TX
Text HLabel 1550 3250 0    50   Input ~ 0
TTLCom1RX
Text HLabel 1550 3350 0    50   Input ~ 0
LED1TTL
Text HLabel 1550 3450 0    50   Input ~ 0
LED2TTL
Text HLabel 1550 3550 0    50   Input ~ 0
AudioSirenTTL
Text HLabel 1550 3650 0    50   Input ~ 0
SDA
Text HLabel 1550 3750 0    50   Input ~ 0
SCL
Text HLabel 1550 3850 0    50   Input ~ 0
TTLLoggingSwitch
Text HLabel 1550 3950 0    50   Input ~ 0
TTLInput1
Text HLabel 1550 4050 0    50   Input ~ 0
TTLInput2
$Comp
L SamacSys_Parts:IRF510 Q?
U 1 1 61568725
P 2550 5050
AR Path="/6153A790/61568725" Ref="Q?"  Part="1" 
AR Path="/623D3962/61568725" Ref="Q?"  Part="1" 
F 0 "Q?" H 2980 5196 50  0000 L CNN
F 1 "IRF510" H 2980 5105 50  0000 L CNN
F 2 "SamacSys_Parts:TO254P465X1024X2050-3P" H 3000 5000 50  0001 L CNN
F 3 "https://www.vishay.com/docs/91015/sihf510.pdf" H 3000 4900 50  0001 L CNN
F 4 "MOSFET RECOMMENDED ALT 844-IRF510PBF" H 3000 4800 50  0001 L CNN "Description"
F 5 "4.65" H 3000 4700 50  0001 L CNN "Height"
F 6 "844-IRF510" H 3000 4600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Vishay-Siliconix/IRF510?qs=ehM%252BESVsXgwwPzb18JjqFw%3D%3D" H 3000 4500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 3000 4400 50  0001 L CNN "Manufacturer_Name"
F 9 "IRF510" H 3000 4300 50  0001 L CNN "Manufacturer_Part_Number"
	1    2550 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6156872B
P 2550 5350
AR Path="/6153A790/6156872B" Ref="R?"  Part="1" 
AR Path="/623D3962/6156872B" Ref="R?"  Part="1" 
F 0 "R?" H 2620 5396 50  0000 L CNN
F 1 "R" H 2620 5305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 2480 5350 50  0001 C CNN
F 3 "~" H 2550 5350 50  0001 C CNN
	1    2550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5600 2850 5550
$Comp
L power:GND #PWR?
U 1 1 61568732
P 2850 5600
AR Path="/6153A790/61568732" Ref="#PWR?"  Part="1" 
AR Path="/623D3962/61568732" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2850 5350 50  0001 C CNN
F 1 "GND" H 2855 5427 50  0000 C CNN
F 2 "" H 2850 5600 50  0001 C CNN
F 3 "" H 2850 5600 50  0001 C CNN
	1    2850 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5500 2550 5550
Wire Wire Line
	2550 5550 2850 5550
Connection ~ 2850 5550
Wire Wire Line
	2850 5250 2850 5550
Wire Wire Line
	2550 5050 2550 5200
Wire Wire Line
	2850 4650 2850 4550
$Comp
L SamacSys_Parts:IRF510 Q?
U 1 1 61568746
P 2500 3500
AR Path="/6153A790/61568746" Ref="Q?"  Part="1" 
AR Path="/623D3962/61568746" Ref="Q?"  Part="1" 
F 0 "Q?" H 2930 3646 50  0000 L CNN
F 1 "IRF510" H 2930 3555 50  0000 L CNN
F 2 "SamacSys_Parts:TO254P465X1024X2050-3P" H 2950 3450 50  0001 L CNN
F 3 "https://www.vishay.com/docs/91015/sihf510.pdf" H 2950 3350 50  0001 L CNN
F 4 "MOSFET RECOMMENDED ALT 844-IRF510PBF" H 2950 3250 50  0001 L CNN "Description"
F 5 "4.65" H 2950 3150 50  0001 L CNN "Height"
F 6 "844-IRF510" H 2950 3050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Vishay-Siliconix/IRF510?qs=ehM%252BESVsXgwwPzb18JjqFw%3D%3D" H 2950 2950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 2950 2850 50  0001 L CNN "Manufacturer_Name"
F 9 "IRF510" H 2950 2750 50  0001 L CNN "Manufacturer_Part_Number"
	1    2500 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6156874C
P 2500 3800
AR Path="/6153A790/6156874C" Ref="R?"  Part="1" 
AR Path="/623D3962/6156874C" Ref="R?"  Part="1" 
F 0 "R?" H 2570 3846 50  0000 L CNN
F 1 "R" H 2570 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 2430 3800 50  0001 C CNN
F 3 "~" H 2500 3800 50  0001 C CNN
	1    2500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4050 2800 4000
$Comp
L power:GND #PWR?
U 1 1 61568753
P 2800 4050
AR Path="/6153A790/61568753" Ref="#PWR?"  Part="1" 
AR Path="/623D3962/61568753" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2800 3800 50  0001 C CNN
F 1 "GND" H 2805 3877 50  0000 C CNN
F 2 "" H 2800 4050 50  0001 C CNN
F 3 "" H 2800 4050 50  0001 C CNN
	1    2800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3950 2500 4000
Wire Wire Line
	2500 4000 2800 4000
Connection ~ 2800 4000
Wire Wire Line
	2800 3700 2800 4000
Wire Wire Line
	2500 3500 2500 3650
Wire Wire Line
	2800 3100 2800 3000
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 61568761
P 3950 3400
AR Path="/6153A790/61568761" Ref="Q?"  Part="1" 
AR Path="/623D3962/61568761" Ref="Q?"  Part="1" 
F 0 "Q?" H 4154 3446 50  0000 L CNN
F 1 "2N7000" H 4154 3355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4150 3325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 3950 3400 50  0001 L CNN
	1    3950 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61568767
P 4050 3850
AR Path="/6153A790/61568767" Ref="R?"  Part="1" 
AR Path="/623D3962/61568767" Ref="R?"  Part="1" 
F 0 "R?" H 4120 3896 50  0000 L CNN
F 1 "R" H 4120 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 3980 3850 50  0001 C CNN
F 3 "~" H 4050 3850 50  0001 C CNN
	1    4050 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6156876D
P 3750 3850
AR Path="/6153A790/6156876D" Ref="R?"  Part="1" 
AR Path="/623D3962/6156876D" Ref="R?"  Part="1" 
F 0 "R?" H 3820 3896 50  0000 L CNN
F 1 "R" H 3820 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 3680 3850 50  0001 C CNN
F 3 "~" H 3750 3850 50  0001 C CNN
	1    3750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4100 4050 4050
$Comp
L power:GND #PWR?
U 1 1 61568774
P 4050 4100
AR Path="/6153A790/61568774" Ref="#PWR?"  Part="1" 
AR Path="/623D3962/61568774" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4050 3850 50  0001 C CNN
F 1 "GND" H 4055 3927 50  0000 C CNN
F 2 "" H 4050 4100 50  0001 C CNN
F 3 "" H 4050 4100 50  0001 C CNN
	1    4050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4000 3750 4050
Wire Wire Line
	3750 4050 4050 4050
Connection ~ 4050 4050
Wire Wire Line
	4050 4050 4050 4000
Wire Wire Line
	4050 3700 4050 3600
Wire Wire Line
	3750 3700 3750 3550
Wire Wire Line
	4050 3200 4050 3100
Wire Wire Line
	3650 3550 3750 3550
Connection ~ 3750 3550
Wire Wire Line
	3750 3550 3750 3400
Text HLabel 4050 3650 2    50   Input ~ 0
TTLIn2
$Comp
L power:+5VP #PWR?
U 1 1 61568786
P 4050 3100
AR Path="/61493C0E/61568786" Ref="#PWR?"  Part="1" 
AR Path="/6153A790/61568786" Ref="#PWR?"  Part="1" 
AR Path="/623D3962/61568786" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4050 2950 50  0001 C CNN
F 1 "+5VP" H 4065 3273 50  0000 C CNN
F 2 "" H 4050 3100 50  0001 C CNN
F 3 "" H 4050 3100 50  0001 C CNN
	1    4050 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61568798
P 2500 2150
AR Path="/6153A790/61568798" Ref="R?"  Part="1" 
AR Path="/623D3962/61568798" Ref="R?"  Part="1" 
F 0 "R?" H 2570 2196 50  0000 L CNN
F 1 "R" H 2570 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 2430 2150 50  0001 C CNN
F 3 "~" H 2500 2150 50  0001 C CNN
	1    2500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2400 2800 2350
$Comp
L power:GND #PWR?
U 1 1 6156879F
P 2800 2400
AR Path="/6153A790/6156879F" Ref="#PWR?"  Part="1" 
AR Path="/623D3962/6156879F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2800 2150 50  0001 C CNN
F 1 "GND" H 2805 2227 50  0000 C CNN
F 2 "" H 2800 2400 50  0001 C CNN
F 3 "" H 2800 2400 50  0001 C CNN
	1    2800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2300 2500 2350
Wire Wire Line
	2500 2350 2800 2350
Connection ~ 2800 2350
Wire Wire Line
	2800 2050 2800 2350
Wire Wire Line
	2500 1850 2500 2000
Wire Wire Line
	2800 1450 2800 1350
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 615687AD
P 3950 1750
AR Path="/6153A790/615687AD" Ref="Q?"  Part="1" 
AR Path="/623D3962/615687AD" Ref="Q?"  Part="1" 
F 0 "Q?" H 4154 1796 50  0000 L CNN
F 1 "2N7000" H 4154 1705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4150 1675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 3950 1750 50  0001 L CNN
	1    3950 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 615687B3
P 4050 2200
AR Path="/6153A790/615687B3" Ref="R?"  Part="1" 
AR Path="/623D3962/615687B3" Ref="R?"  Part="1" 
F 0 "R?" H 4120 2246 50  0000 L CNN
F 1 "R" H 4120 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 3980 2200 50  0001 C CNN
F 3 "~" H 4050 2200 50  0001 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 615687B9
P 3750 2200
AR Path="/6153A790/615687B9" Ref="R?"  Part="1" 
AR Path="/623D3962/615687B9" Ref="R?"  Part="1" 
F 0 "R?" H 3820 2246 50  0000 L CNN
F 1 "R" H 3820 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 3680 2200 50  0001 C CNN
F 3 "~" H 3750 2200 50  0001 C CNN
	1    3750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2450 4050 2400
$Comp
L power:GND #PWR?
U 1 1 615687C0
P 4050 2450
AR Path="/6153A790/615687C0" Ref="#PWR?"  Part="1" 
AR Path="/623D3962/615687C0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4050 2200 50  0001 C CNN
F 1 "GND" H 4055 2277 50  0000 C CNN
F 2 "" H 4050 2450 50  0001 C CNN
F 3 "" H 4050 2450 50  0001 C CNN
	1    4050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2350 3750 2400
Wire Wire Line
	3750 2400 4050 2400
Connection ~ 4050 2400
Wire Wire Line
	4050 2400 4050 2350
Wire Wire Line
	4050 2050 4050 1950
Wire Wire Line
	3750 2050 3750 1900
Wire Wire Line
	4050 1550 4050 1450
Wire Wire Line
	3650 1900 3750 1900
Connection ~ 3750 1900
Wire Wire Line
	3750 1900 3750 1750
Text HLabel 4050 2000 2    50   Input ~ 0
TTLIn1
$Comp
L power:+5VP #PWR?
U 1 1 615687D2
P 4050 1450
AR Path="/61493C0E/615687D2" Ref="#PWR?"  Part="1" 
AR Path="/6153A790/615687D2" Ref="#PWR?"  Part="1" 
AR Path="/623D3962/615687D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4050 1300 50  0001 C CNN
F 1 "+5VP" H 4065 1623 50  0000 C CNN
F 2 "" H 4050 1450 50  0001 C CNN
F 3 "" H 4050 1450 50  0001 C CNN
	1    4050 1450
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:IRF510 Q?
U 1 1 61568792
P 2500 1850
AR Path="/6153A790/61568792" Ref="Q?"  Part="1" 
AR Path="/623D3962/61568792" Ref="Q?"  Part="1" 
F 0 "Q?" H 2930 1996 50  0000 L CNN
F 1 "IRF510" H 2930 1905 50  0000 L CNN
F 2 "SamacSys_Parts:TO254P465X1024X2050-3P" H 2950 1800 50  0001 L CNN
F 3 "https://www.vishay.com/docs/91015/sihf510.pdf" H 2950 1700 50  0001 L CNN
F 4 "MOSFET RECOMMENDED ALT 844-IRF510PBF" H 2950 1600 50  0001 L CNN "Description"
F 5 "4.65" H 2950 1500 50  0001 L CNN "Height"
F 6 "844-IRF510" H 2950 1400 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Vishay-Siliconix/IRF510?qs=ehM%252BESVsXgwwPzb18JjqFw%3D%3D" H 2950 1300 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 2950 1200 50  0001 L CNN "Manufacturer_Name"
F 9 "IRF510" H 2950 1100 50  0001 L CNN "Manufacturer_Part_Number"
	1    2500 1850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
