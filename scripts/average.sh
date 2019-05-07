#!/bin/bash

###############################################################################
# File          : average.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 7 May, 2019
# Updated       : 7 May, 2019
# Description   : Calculates average of entered nos and catches exception if -ve no is entered.
################################################################################


# Function to read user entered nos and store them in a array.
read_input ()
{
for (( i=1; i<=$count; i++ ))
do
	echo -n "Enter the number: "
	read nums[$i]
done
echo
test_input
}


# Function to check if any of the entered nos is negative. If negative recall read_input ()
test_input ()
{
for (( i=1; i<=$count; i++ ))
do
	if (( $(echo "${nums[$i]} < 0" | bc -l) ))
	then
		echo "You entered a negative number ${nums[$i]}. Please enter positive nos only."
		echo "Re-entering numbers."
		echo
		read_input
	fi
done
}


# Function to calculate average
cal_avg ()
{
sum=0
for (( i=1; i<=$count; i++ ))
do
	sum=`echo "$sum+${nums[$i]}" | bc`
done
avg=`echo "$sum/$count" | bc -l`
echo
echo "The average of entered nos is: $avg"
echo
}

	
# Main program body starts here.
clear		#clear screen
echo "This script will calculate average of entered numbers. Press enter to continue."
read
clear
echo -n "How many numbers will you enter: "
read count;
echo
read_input					#Call function to read nos
cal_avg
echo "The script ends here."
