#!/bin/bash

###############################################################################
# File          : table.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 6 May, 2019
# Updated       : 6 May, 2019
# Description   : This script will ask for a number and print its table upto 10.
################################################################################

clear		#clear screen
echo "This script will print the table of an entered number."
echo
echo -n "Enter a number (integer only): "
read number
echo "Below is $number's table:"
for i in `seq 10`
do 
	ans=`expr $number \* $i`
	echo "$number x $i = $ans"
done
