#!/bin/sh


#notes:
#	OVSS_Configcheck verification 
#


version="1.0 (2020/11/09)";

echo "------------------------------------------------------------------------------";
echo "------------------------------------------------------------------------------";
echo "Copyright (c) 2020 Foxconn. All Rights Reserved.";
echo "For Conan Project";	
echo "------------------------------------------------------------------------------";
echo "------------------------------------------------------------------------------";
echo;

echo "OVSS_Configcheck verification";
echo "version: $version";

echo;
echo "---------------------------------Test Date------------------------------------";
date "+%Y-%m-%d %H:%M:%S";
echo;

echo;
echo "---------------------------------BIOS  Version--------------------------------";
echo;
echo -n "BIOS version: "; 
dmidecode -s bios-version;
echo;

echo;
echo "---------------------------------BMC version----------------------------------";
echo;
echo -n "check BMC version: "; 
ipmitool mc info | grep 'Firmware Revision' | awk -F\: '{print $2}';
echo;

echo;
echo "---------------------------------Kernel Version-------------------------------";
echo;
echo "Kernel Version: "; 
uname -a;
echo;

echo;
echo "---------------------------------NIC FW Version-------------------------------";
echo;
echo "NIC FW Version"; 
ethtool -i eth0 | grep "firmware";
echo;
sleep 5;

echo;
echo "---------------------------------NIC EEPROM-----------------------------------";
echo;
echo "NIC EEPROM"; 
ethtool -e eth0;
echo;
sleep 5;

echo;
echo "---------------------------------Granite Haven FW-----------------------------";
echo;
echo "Granite Haven FW"; 
ethtool -i eth0 | grep firmware;
echo;

echo;
echo "---------------------------------cSSD FW--------------------------------------";
echo;
echo "cSSD FW"; 
smartctl --all /dev/sda1 | grep "Firmware Version";
echo;
sleep 10;

echo;
echo "---------------------------------gsys Version---------------------------------";
echo;
echo "gsys FW"; 
gsys --version;
echo;

echo;
echo "---------------------------------Memory---------------------------------------";
echo;
echo "DIMM count"; 
dmidecode -t memory | grep 'Size' | grep 'MB' --count;
echo;

echo;
echo "DIMM size"; 
dmidecode --type 17 | grep -i size | grep -i MB;


echo;
echo "DIMM speed"; 
dmidecode -t memory | grep -A16 'Memory Device' | grep 'MT/s';


echo;
echo "Slot assignment (halfpop)"; 
dmidecode --type 17 | grep -i MB;


echo;
echo "Part number"; 
dmidecode -t memory | grep Part;


echo;
echo "Type"; 
dmidecode -t memory| grep DDR4;


echo;
echo "DIMM Thermal & Margins "; 
ipmitool sensor | grep DIMM | grep Temp;
echo;
sleep 10;


echo;
echo "---------------------------------NIC------------------------------------------";
echo;
echo "PCI bus width/Speed"; 
lspci -s 0007:01:00.1 -vvv |grep -i width;


echo;
echo "PCI address"; 
lspci -s 0007:01:00.1;


echo;
echo "Link speed"; 
ethtool eth0 | grep Speed;


echo;
echo "Link state(up/Down)"; 
ethtool eth0 | grep Link;
echo;
sleep 10;

echo;
echo "---------------------------------CPUs-----------------------------------------";
echo;
echo "Product name"; 
dmidecode -t processor| grep Version;


echo;
echo "Socket enabled"; 
cat /proc/cpuinfo| grep processor | wc -l;
echo;

echo;
echo "Threads per core"; 
dmidecode -t processor| grep Thread;
echo;

echo;
echo "Core count per CPU"; 
dmidecode -t processor| grep Core;
echo;

echo;
echo "Core Core/socket thermal & margin sensors ";
ipmitool sensor list | grep SOC_Temp;
echo;
sleep 10;
echo;

echo;
echo "Socket power sensors";
ipmitool sensor list | grep CPU_Pwr;
echo;
sleep 10;
echo;

echo;
echo "Socket voltage sensors";
ipmitool sensor list | grep 3V3_SOC;
echo;
sleep 10;
echo;


echo;
echo "---------------------------------Motherboard-----------------------------------";
echo;
echo "Manufacturer"; 
ipmitool fru | grep "Board Mfg";
echo;


echo;
echo "Various mobo current sensors"; 
ipmitool sdr elist;
echo;



echo;
echo "Various mobo voltage sensors"; 
ipmitool sdr elist | grep Volt;
echo;


echo;
echo "Various mobo Power sensors"; 
ipmitool sdr elist | grep Watt;
echo;

echo;
echo "All EEPROMS"; 
ipmitool fru;
echo;

echo;
echo "Any USB conections"; 
lsusb -t;
echo;


echo;
echo "---------------------------------Other-----------------------------------------";
echo;
echo "All fan speeds"; 
ipmitool sdr elist |grep FAN;
echo;


echo;
echo "--------------------------Boot device (cSSD)-----------------------------------";
echo;
echo "Connection speed"; 
smartctl -i /dev/sda1 | grep current;
echo;

echo;
echo "Device size"; 
smartctl --all /dev/sda1 | grep Size;
echo;

echo;
echo "Device mfr or part number"; 
smartctl --all /dev/sda1| grep Serial;
echo;

echo;
echo "Firmware version"; 
smartctl --all /dev/sda1 | grep "Firmware Version";
echo;


echo "---------------------------------End-------------------------------------------";



