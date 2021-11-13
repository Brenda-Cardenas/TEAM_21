EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L power:GND #PWR?
U 1 1 6183D62C
P 6000 4300
F 0 "#PWR?" H 6000 4050 50  0001 C CNN
F 1 "GND" H 6005 4127 50  0000 C CNN
F 2 "" H 6000 4300 50  0001 C CNN
F 3 "" H 6000 4300 50  0001 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61833849
P 7850 3350
F 0 "#PWR?" H 7850 3100 50  0001 C CNN
F 1 "GND" H 7855 3177 50  0000 C CNN
F 2 "" H 7850 3350 50  0001 C CNN
F 3 "" H 7850 3350 50  0001 C CNN
	1    7850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3250 7850 3350
Wire Wire Line
	6500 3450 7000 3450
Wire Wire Line
	7000 3450 7000 2250
Wire Wire Line
	6000 4050 6000 4300
$Comp
L power:+5V #PWR?
U 1 1 618B2D63
P 6200 1950
F 0 "#PWR?" H 6200 1800 50  0001 C CNN
F 1 "+5V" H 6200 2100 50  0000 C CNN
F 2 "" H 6200 1950 50  0001 C CNN
F 3 "" H 6200 1950 50  0001 C CNN
	1    6200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2050 6200 1950
Wire Wire Line
	6800 2350 7150 2350
Wire Wire Line
	7000 2250 7150 2250
$Comp
L power:+5V #PWR?
U 1 1 618B830D
P 7950 1850
F 0 "#PWR?" H 7950 1700 50  0001 C CNN
F 1 "+5V" H 7965 2023 50  0000 C CNN
F 2 "" H 7950 1850 50  0001 C CNN
F 3 "" H 7950 1850 50  0001 C CNN
	1    7950 1850
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Motion:MPU-6050 IMU1-Acelerómetro
U 1 1 6182F958
P 7850 2550
F 0 "IMU1-Acelerómetro" H 8550 3300 50  0000 C CNN
F 1 "MPU-6050" H 8550 3200 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_4x4mm_P0.5mm" H 7850 1750 50  0001 C CNN
F 3 "https://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf" H 7850 2400 50  0001 C CNN
	1    7850 2550
	1    0    0    -1  
$EndComp
$Comp
L 7.4:+7.4V #PWR?
U 1 1 618B72DE
P 5100 3500
F 0 "#PWR?" H 5100 3350 50  0001 C CNN
F 1 "+7.4V" H 5115 3673 50  0000 C CNN
F 2 "" H 5100 3500 50  0001 C CNN
F 3 "" H 5100 3500 50  0001 C CNN
	1    5100 3500
	1    0    0    -1  
$EndComp
$Comp
L 7.4:+7.4V #PWR?
U 1 1 618BC383
P 5900 1950
F 0 "#PWR?" H 5900 1800 50  0001 C CNN
F 1 "+7.4V" H 5900 2100 50  0000 C CNN
F 2 "" H 5900 1950 50  0001 C CNN
F 3 "" H 5900 1950 50  0001 C CNN
	1    5900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2050 5900 1950
$Comp
L power:GND #PWR?
U 1 1 618C437B
P 4450 4250
F 0 "#PWR?" H 4450 4000 50  0001 C CNN
F 1 "GND" H 4455 4077 50  0000 C CNN
F 2 "" H 4450 4250 50  0001 C CNN
F 3 "" H 4450 4250 50  0001 C CNN
	1    4450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4150 4450 4250
Wire Wire Line
	5100 3600 5100 3500
Wire Wire Line
	5400 3350 5500 3350
$Comp
L MCU_Module:Arduino_Nano_v3.x Microcontrolador
U 1 1 61828E43
P 6000 3050
F 0 "Microcontrolador" H 5250 4000 50  0000 C CNN
F 1 "Arduino Nano" H 5250 3900 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6000 3050 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6000 3050 50  0001 C CNN
	1    6000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3550 6800 3550
Wire Wire Line
	6800 3550 6800 2350
Wire Wire Line
	5400 2650 5400 3350
Wire Wire Line
	4700 2650 5400 2650
Wire Wire Line
	4850 3600 5100 3600
Wire Wire Line
	4450 3750 4450 3600
$Comp
L Switch:SW_SPST SW?
U 1 1 618C6567
P 4650 3600
F 0 "SW?" H 4650 3835 50  0001 C CNN
F 1 "Switch ON/OFF" H 4950 3500 50  0000 R CNN
F 2 "" H 4650 3600 50  0001 C CNN
F 3 "~" H 4650 3600 50  0001 C CNN
	1    4650 3600
	1    0    0    1   
$EndComp
Wire Wire Line
	4700 2750 4800 2750
$Comp
L 7.4:+7.4V #PWR?
U 1 1 618BA1CA
P 4800 2750
F 0 "#PWR?" H 4800 2600 50  0001 C CNN
F 1 "+7.4V" V 4800 3000 50  0000 C CNN
F 2 "" H 4800 2750 50  0001 C CNN
F 3 "" H 4800 2750 50  0001 C CNN
	1    4800 2750
	0    1    1    0   
$EndComp
$Comp
L Device:Battery 7.4V/1000mAh
U 1 1 618BA61C
P 4450 3950
F 0 "7.4V/1000mAh" H 4558 3996 50  0000 L CNN
F 1 "Batería" H 4558 3905 50  0000 L CNN
F 2 "" V 4450 4010 50  0001 C CNN
F 3 "~" V 4450 4010 50  0001 C CNN
	1    4450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2850 4850 2950
$Comp
L power:GND #PWR?
U 1 1 61853C9F
P 4850 2950
F 0 "#PWR?" H 4850 2700 50  0001 C CNN
F 1 "GND" H 4855 2777 50  0000 C CNN
F 2 "" H 4850 2950 50  0001 C CNN
F 3 "" H 4850 2950 50  0001 C CNN
	1    4850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2850 4850 2850
$Comp
L Motor:Motor_Servo ServoMotor
U 1 1 6184D3FD
P 4400 2750
F 0 "ServoMotor" H 4394 3094 50  0000 C CNN
F 1 "MG995" H 4394 3003 50  0000 C CNN
F 2 "" H 4400 2560 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4400 2560 50  0001 C CNN
	1    4400 2750
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
