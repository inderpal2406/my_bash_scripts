#!/bin/bash

###############################################################################
# File          : pattern.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 8 May, 2019
# Updated       : 8 May, 2019
# Description   : Generates a Kite shaped pattern depending on user's input.
#		  For comments, we have considered the user input as 5.
################################################################################


clear		#clear screen
echo "This script will print a pattern of *"
echo "Press enter to continue."
read
clear


echo -n "Enter a number between 5 to 10: "	
read num					#read user input


# Outer loop for upper half pattern
for (( i=1; i<=$num; i++ ))			#loop for incrementing lines from 1 to 5
do
	num1=`expr $num - $i`			#var to calculate no. of blank spaces depending on $i (line number)
	for (( j=1; j<=$num1; j++ ))		#loop to give blank spaces in output
	do
		echo -n " "			#print blank spaces (-n option to disable switching of echo to next line)
	done
	num2=`echo "$i*2-1" | bc`		#var to calculate no. of * depending on $i (line number)
	for (( k=1; k<=$num2; k++ ))		#loop to print * in output
	do
		echo -n "*"			#print * (-n will print the subsequent * in same line)
	done
	echo					#to switch to next line in output
done


num3=`expr $num - 1`				#var to track line nos for lower half pattern


# Outer loop for lower half pattern
for (( i=$num3; i>0; i-- ))			#loop for decrementing lines from 4 to 1
do
	num4=`expr $num - $i`			#var to calculate no. of blank spaces depending on $i (line number)
	for (( j=1; j<=$num4; j++ ))		#loop to give blank spaces in output
	do
		echo -n " "			#print blank spaces
	done
	num5=`echo "$i*2-1" | bc`		#var to calculate no. of * depending on $i (line number)
	for (( k=1; k<=$num5; k++ ))		#loop to print * in output
	do
		echo -n "*"			#print *
	done
	echo					#to switch to next line of output
done
