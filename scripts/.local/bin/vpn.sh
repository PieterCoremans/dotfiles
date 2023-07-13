#!/bin/bash

vpn() {
  wg="$(ifconfig | grep peer1 | grep RUNNING |wc -l)"

  if [ $wg -ge 1 ]; then 
    echo "VPN UP"
  else
    echo "VPN down "
  fi
}

echo "$(vpn)"
