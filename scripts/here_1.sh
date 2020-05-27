#!/usr/bin/env bash

###############################################################################
# File          : here_1.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 23 Dec, 2019
# Updated       : 23 Dec, 2019
# Description   : A script to demonstrate use of here document.
################################################################################

# Define delay function
delay ()
{
	for i in 1 2 3 4 5
	do
		echo -n "."
		sleep 1
	done
}
	
# clear screen
clear

# This script will display all browser options and let's us choose which one to use.
echo "We have below browser options,"
cat << BROWSERS
mozilla firefox
google chrome
safari
opera
BROWSERS
echo
echo -n "Which browser do we want to open? Enter its name [opera] and press [ENTER]: "
read browser
echo 
echo -n "Starting $browser"
delay
# $browser &	# to start browser in background and let the script complete
echo
