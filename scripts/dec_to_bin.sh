#!/bin/bash

###############################################################################
# File          : dec_to_bin.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 18 May, 2019
# Updated       : 18 May, 2019
# Description   : To convert a decimal number to its equivalent binary number.
################################################################################

clear			#clear the screen
echo "This script will convert a given decimal number to its equivalent binary number."		#Display purpose of script
echo			#leave a line
echo "Press enter key to proceed."								#Ask for permission to proceed
read			#read the enter key
echo


echo -n "Enter the decimal number: "								#Ask the decimal number from user
read decnum											#Read the entered decimal num
echo


# if loop to test if the entered decimal number is 0 or not
# if 0 then directly display binary equivalent as 0 or else continue with conversion
if [ $decnum -eq 0 ]
then
	echo "The binary equivalent is $decnum."
	echo
else	
	i=1								#initiate index for array to store remainders
	while [ $decnum -ne 0 ]						#continue loop till decnum (quotient) becomes 0
	do
		rem[$i]=`expr $decnum % 2`				#store remainders of subsequent divisions in rem array
		decnum=`expr $decnum / 2`				#update decnum (quotient) for next iteration
		i=`expr $i + 1`						#increment index of rem array
	done
	count=$i							#assign count value of $i (max array index of rem array)
	for (( j=1; j<=$count; j++ ))
	do
		bin[$j]=`echo ${rem[$i]}`				#store values of rem array into bin array in reverse order
		i=`expr $i - 1`						#decrement index for rem array
	done
	echo "The binary equivalent number is = ${bin[@]}"		#display binary output
	echo
fi
echo "The script ends here."
echo
