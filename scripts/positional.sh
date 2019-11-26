#!/bin/bash

###############################################################################
# File          : positional.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 26 Nov, 2019
# Updated       : 26 Nov, 2019
# Description   : Processes positional arguments which are command line arguments.
# How to execute: ./positional.sh arg1 arg2 arg3...
################################################################################


clear

echo "This script will display the no of positional arguments entered and their values."
echo
echo "Press enter to proceed."
read

clear

if [ $# -eq 0 ]
then
	echo "No positional parameters were added."
	echo "The correct syntax is: ./positional.sh arg1 arg2 arg3..."
	echo "These arguments can be string, special symbol, alphabets."
	echo "Exiting script. Please try again."
	exit 1
else
	echo "The number of positional parameters entered: $#"
	echo
	echo "The parameters are as follows,"
	echo
	for (( i=1; i<=$#; i++ ))
	do
		echo "Parameter $i: ${!i}"	# indirect reference of variables
	done
fi

echo
echo "The script ends here."
