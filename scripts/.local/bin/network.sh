#!/bin/bash

network() {
  wire="$(nmcli device status | grep ethernet | grep connected | wc -l)"
  wifi="$(nmcli device status | grep wifi | grep connected | wc -l)"

  if [ $wire -ge 1 ]; then 
    echo "Ethernet"
    #echo " Ethernet"
  elif [ $wifi -ge 1 ]; then 
    echo "Wifi"
    #echo "  Wifi"
  else
    echo "No internet"
    #echo " No internet"
  fi
}

echo "$(network)"
