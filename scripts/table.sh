#!/bin/bash

###############################################################################
# File          : table.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 6 May, 2019
# Updated       : 6 May, 2019
# Description   : Ask for a number and print its table upto desired number of multiples.
################################################################################


clear		#clear screen


echo "This script will print the table of an entered number."
echo


echo -n "Enter a number: "
read number
echo


echo -n "How many multiples need to be calculated: "
read count
echo


echo "Below is $number's table:"
echo


for (( i=1; i<=$count; i++ ))
do
	ans=`echo "$number*$i" | bc`
	echo "$number x $i = $ans"
done


#for i in `seq 10`
#do 
#	ans=`expr $number \* $i`
#	echo "$number x $i = $ans"
#done
