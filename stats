#!/bin/bash

function thing
{
  echo "$1: $2"
}

thing "Username" $USER
thing "Hostname" $HOSTNAME
thing "OS version" "`sw_vers | grep ProductName | cut -f 2` `sw_vers | grep ProductVersion | cut -f 2` (build `sw_vers | grep BuildVersion | cut -f 2`)"
thing "IP Address (en0)" `sudo ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f 2`
thing "IP Address (en1)" `sudo ifconfig en1 | grep inet | grep -v inet6 | cut -d ' ' -f 2`
./meminfo.py
echo ""
TZ=Europe/London date "+London: %a %d %h %Y %r"
TZ=America/Los_Angeles date "+California: %a %d %h %Y %r"
TZ=America/New_York date "+Washington DC: %a %d %h %Y %r"
TZ=Australia/Canberra date "+Canberra: %a %d %h %Y %r"

