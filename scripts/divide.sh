#!/bin/bash

#This script will divide 2 numbers and display further results depending on divisor and dividend.
clear										#clear screen
echo "This script will divide 2 numbers. Press 'Enter' to continue."		#display purpose of script
read										#read enter key
read_input ()									#define function	
{
echo -n "Enter the first number: "						#display message
read num1									#intake num1
echo -n "Enter the second number: "
read num2
}
divide ()
{
ans=`expr $num1 / $num2`							#perform division
rem=`expr $num1 % $num2`							#calculate remainder
}
read_input									#call function
divide
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
