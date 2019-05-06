#!/bin/bash

###############################################################################
# File          : case_converter.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 7 May, 2019
# Updated       : 7 May, 2019
# Description   : Converts upper to lower OR lower to upper OR both as told by user.
################################################################################


clear		#clear screen
echo "This script will change case of text. Press enter to continue."
read
clear
echo "What do you want to do?"
echo
echo "1. Change UPPER case to LOWER case."
echo "2. Change LOWER case to UPPER case."
echo "3. Change UPPER to LOWER as well as LOWER to UPPER simultaneously."
echo
echo -n "Enter your choice [1|2|3]: "
read choice
echo


echo -n "Enter the absolute (complete) path of the file to be changed: "
read FILE


case $choice in

1)	cat $FILE | tr [A-Z] [a-z]
	;;

2)	cat $FILE | tr [a-z] [A-Z]
	;;

3)	cat $FILE | tr [a-zA-Z] [A-Za-z]
	;;

*)	echo "Invalid choice. Please enter 1,2 or 3 only."
	;;
esac


echo
echo "The script ends here."
