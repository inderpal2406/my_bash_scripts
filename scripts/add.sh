#!/bin/bash

###############################################################################
# File          : add.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 6 May, 2019
# Updated       : 6 May, 2019
# Description   : adds desired no of natural numbers.
################################################################################


clear
echo "This script will add desired numbers. Press enter to continue."
read
echo


echo -n "How many numbers do want to add: "
read count
echo


for (( i=1; i<=$count; i++ ))
do
	echo -n "Enter the number: "
	read nums[$i]
	echo
done


sum=0
for (( i=1; i<=$count; i++ ))
do
	sum=`expr $sum + ${nums[$i]}`
done


echo "The sum is $sum."
echo
echo "The script ends here."
