#!/bin/bash
# Uninstall script for Sn1per
# Created by @xer0dayz - https://sn1persecurity.com

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# VARS
OKBLUE='\033[94m'
OKRED='\033[91m'
OKGREEN='\033[92m'
OKORANGE='\033[93m'
RESET='\e[0m'

echo -e "$OKRED                ____               $RESET"
echo -e "$OKRED    _________  /  _/___  ___  _____$RESET"
echo -e "$OKRED   / ___/ __ \ / // __ \/ _ \/ ___/$RESET"
echo -e "$OKRED  (__  ) / / // // /_/ /  __/ /    $RESET"
echo -e "$OKRED /____/_/ /_/___/ .___/\___/_/     $RESET"
echo -e "$OKRED               /_/                 $RESET"
echo -e "$RESET"
echo -e "$OKORANGE + -- --=[$RESET"
echo ""

INSTALL_DIR=/usr/share/Maxl0x

echo -e "$OKRED[>]$RESET This script will uninstall Maxl0x and remove ALL files under $INSTALL_DIR. Are you sure you want to continue?$RESET"
read answer

rm -Rf /usr/share/Maxl0x/
rm -f /usr/bin/Maxl0x

echo -e "$OKBLUE[*]$RESET Done!$RESET"