#!/usr/bin/env bash

###############################################################################
# File          : leap_year.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 22 Dec, 2019
# Updated       : 22 Dec, 2019
# Description   : Checks if the entered year is a leap year or not.
################################################################################


clear
echo "This script will check if the entered year is a leap year or not."
echo
echo -n "Enter the year: "
read year
echo

# Logic to determine leap year

if [ $(($year % 400)) -eq 0 ]
then
	echo "$year is a leap year. February has 29 days in this year."
elif [ $(($year % 4)) -eq 0 ]
then
	if [ $(($year % 100)) -ne 0 ]
	then
		echo "$year is a leap year. February has 29 days in this year."
	else
		echo "$year is not a leap year. February has 28 days in this year."
	fi
else
	echo "$year is not a leap year. February has 28 days in this year."
fi

echo
echo "The script ends here."
