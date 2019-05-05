#!/bin/bash

###############################################################################
# File          : weather.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 6 May, 2019
# Updated       : 6 May, 2019
# Description	: This script will display weather of an entered location.
################################################################################

clear
echo "This script will display weather of a location."
echo
echo -n "Do you want to display weather info about your current location or some other location? [current|other]: "
read choice

case "$choice" in
current)
	curl wttr.in
	;;
other)
	echo -n "Enter the location name: "
	read location
	curl wttr.in/$location
	;;
esac
