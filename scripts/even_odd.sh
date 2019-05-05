#!/bin/bash

###############################################################################
# File          : even_odd.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 6 May, 2019
# Updated       : 6 May, 2019
# Description	: This script will tell if the entered number is even or odd.
################################################################################

read_num ()
{
echo -n "Enter a number: "
read number
}

calculate ()
{
rem=`expr $number % 2 2>/dev/null`
exit_status=$?
print
}

print ()
{
if [ $exit_status -eq 2 ]
then
	echo "You entered a decimal number. Please enter an integer."
	read_num
	calculate
else
	if [ $rem -eq 0 ]
	then
		echo "$number is an even number."
	else
		echo "$number is an odd number."
	fi
fi
}


clear		
echo "This script will tell if the entered number is even or odd."
echo
read_num
calculate
