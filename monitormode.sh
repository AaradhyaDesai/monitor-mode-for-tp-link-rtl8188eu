#!/bin/bash
echo "enter wireless enterface"
read WLAN
sudo rmmod r8188eu.ko
sudo modprobe 8188eu
iwconfig $WLAN mode monoitor
iwconfig
echo "if this doesn't works then try to reconnect the wireless module and then run this again or check weather the backgroung application blocking monitor mode is stopped"
echo "to exit monitor mode enter <iwconfig wlan_moodule_name mode managed>"

