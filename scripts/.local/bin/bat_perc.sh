#!/bin/bash

#echo "$(acpi | cut -d , -f 2 | cut -d " " -f 2)"
bat_1=$(cat /sys/class/power_supply/BAT0/capacity)
bat_2=$(cat /sys/class/power_supply/BAT1/capacity)
bat_level=$(echo "($bat_1 + $bat_2) / 2" | bc)
echo "$bat_level%"
if [[ $bat_level -le 9 && $(acpi |grep "Discharging" | wc -l) -ge 1 ]]; then
       dunstify -a lowbattery -u critical "Low battery!" "Hook up to power supply"	
fi
#if [[ $(acpi -b | grep -P -o '[0-9]+(?=%)') -le 9 &&  $(acpi |grep "Discharging" | wc -l) == 1 ]]; then
#       dunstify -a lowbattery -u critical "Low battery!" "Hook up to power supply"	
#fi
