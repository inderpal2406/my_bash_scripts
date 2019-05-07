#!/bin/bash

###############################################################################
# File          : bitwise_add.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 7 May, 2019
# Updated       : 7 May, 2019
# Description   : Calculates sum of digits of entered number.
#		  If the entered number is a decimal no, then re-ask for input for non-decimal no.
################################################################################


# Function to read the number.
read_input ()
{
echo -n "Please enter a number: "
read num
echo
}


# Function to test if decimal number is added.
test_input ()
{
test=`expr $num / 2 > /dev/null 2>&1`
if [ $? -eq 2 ]
then
	echo "Invalid input. Only non-decimal numbers accepted."
	echo "Please enter input again."
	echo
	read_input
fi
}


# Function to calculate sum of digits of entered number.
cal_sum ()
{
count=`echo ${#num}`
sum=0
for (( i=1; i<=$count; i++ ))
do
	digit=`echo "$num%10" | bc`
	num=`echo "$num/10" | bc`
	sum=`echo "$sum+$digit" | bc`
done
}


# Function to display sum of digits
# This function will convert sum of digits of a negative number to positive number.
val_sum ()
{
if [ $sum -lt 0 ]
then
	sum=`echo "$sum*-1" | bc`
fi
echo "Sum of digits: $sum"
echo
}


# Main body of program starts here.
clear		#clear screen
echo "This script will calculate sum of digits of entered number. Press enter to continue."
read;
echo
read_input
test_input
cal_sum
val_sum
echo "The script ends here."
