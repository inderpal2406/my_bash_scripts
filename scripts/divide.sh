#!/bin/bash

###############################################################################
# File          : divide.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 6 May, 2019
# Updated       : 6 May, 2019
# Description	: This script will divide 2 numbers and display further results depending on divisor and dividend.
################################################################################


clear										#clear screen
echo "This script will divide 2 numbers. Press 'Enter' to continue."		#display purpose of script
read										#read enter key
echo


# Function to test if decimal no is entered
test ()
{
test_ans=`expr $num1 / $num2 > /dev/null 2>&1`
if [ $? -eq 2 ]
then
	echo "You entered a decimal number. Only non-decimal nos allowed. Please re-enter the nos."
	echo
	read_input								#re-read input if decimal no is entered
fi
}


# Function to read input
read_input ()									#define function	
{
echo -n "Enter the first number: "						#display message
read num1									#intake num1
echo -n "Enter the second number: "
read num2
test										#test the entered nos if decimal or not
}


# Function to divide entered nos
divide ()
{
ans=`expr $num1 / $num2`							#perform division
rem=`expr $num1 % $num2`							#calculate remainder
}


# Main body of script starts here
read_input									#call function to read input
divide										#call function to divide entered nos


# To do additional processing based on quotient and remainder
if [ $ans -eq 0 ]
then
	echo -n "You entered the smaller number first. Do you want to re-enter the numbers? Y/N "
	read input
	if [ "$input" == "N" ]
	then
		echo "$num1/$num2= $ans and remainder is $rem."
	else
		read_input 
		divide
		echo "$num1/$num2= $ans and remainder is $rem."
	fi
else
	if [ $rem -eq 0 ]
	then
		echo "$num1 is divisible by $num2."
		echo "$num1/$num2= $ans and remainder is $rem."
	else
		echo "$num1 is not divisible by $num2."
		echo "$num1/$num2= $ans and remainder is $rem."
	fi
fi
