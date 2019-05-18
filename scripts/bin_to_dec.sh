#!/bin/bash

###############################################################################
# File          : bin_to_dec.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 18 May, 2019
# Updated       : 18 May, 2019
# Description   : To convert a given binary number to its decimal equivalent.
################################################################################

clear			#clear the screen
echo "This script will convert a given binary number to its decimal equivalent."	#Display the purpose of the script
echo			#leave a line
echo "Press enter to continue."								#Ask for user input to continue
read			#read the enter key
echo


echo -n "Enter the binary number: "							#Ask for the binary number
read binnum										#Store entered number in binnum var
echo


# if loop to directly display 0 as decimal number if 0 as binary number is entered
# else do the conversion
if [ $binnum -eq 0 ]
then
	echo "The decimal equivalent number is $binnum."
	echo
else
	power=0										#initiate power var with 0 to denote power of 2
	sum=0										#initiate sum var as 0 to store subsequent sums
	while [ $binnum -ne 0 ]								#loop will continue until binnum (quotient) becomes 0
	do
		rem=`expr $binnum % 10`							#separate digits of binnum var
		binnum=`expr $binnum / 10`						#calculate the next quotient
		sum=`echo "$sum+$rem*2^$power" | bc`					#perform prev sum + (digit * 2^power)
		power=`expr $power + 1`							#increment power
	done
	echo "The decimal equivalent number is $sum."
	echo
fi
echo "The script ends here."
echo
