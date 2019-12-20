#!/usr/bin/env bash

###############################################################################
# File          : file_info.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 20 Dec, 2019
# Updated       : 20 Dec, 2019
# Description   : Provides info about the file supplied as a command line argument.
################################################################################

clear

if [ $# != 1 ]
then
	echo "Usage: $0 filename"
	echo "Tip: provide full path to filename."
	echo "Example: $0 /tmp/test.txt"
	exit 1
fi

if [ -a $1 ]
then
	echo "Type of file is $(file $1 | cut -d":" -f 2)."
	test "$(ls -ld $1 | cut -c1)" == "d" && (echo "Inode number is $(ls -id $1 | cut -d" " -f1).") || (echo "Inode number is $(ls -i $1 | cut -d" " -f1).")
	test "$(ls -ld $1 | cut -c1)" == "d" && (echo "Size of $1 is $(ls -lhd $1 | cut -d" " -f5).") || (echo "Size of $1 is $(ls -lh $1 | cut -d" " -f5).")
	df -h $1 | grep -v "Mounted on" | awk '{print "This file exists on " $1 " filesystem which is mounted on " $6 " partition."}'
else
	echo "$1 doesn't exist on system."
fi

##############################################################################################################################################################
# Few commands from above if construct need to have comments. So, below are those comments along with commands.
#if [ -a $1 ]
#then
#	echo "Type of file is $(file $1 | cut -d":" -f 2)."
#	test "$(ls -ld $1 | cut -c1)" == "d" && (echo "Inode number is $(ls -id $1 | cut -d" " -f1).") || (echo "Inode number is $(ls -i $1 | cut -d" " -f1).")
##	echo "Size of $1 is $(ls -lh $1 | awk '{print $5}'."	#using awk with CLA requires attention as both uses $1, $2,..., so we're using cut here
#	test "$(ls -ld $1 | cut -c1)" == "d" && (echo "Size of $1 is $(ls -lhd $1 | cut -d" " -f5).") || (echo "Size of $1 is $(ls -lh $1 | cut -d" " -f5).")
##	as done above, using cut requires special attention as sometimes in real output, fields are unevenly separated.
##	df -h $1 | grep -v "Mounted on" | awk '{print "$1 exists on " $1 " filesystem which is mounted on " $6 " partition."}'
##	In above line $1 inside "" in awk isn't interpreted as a CLA.
##	echo "$(df -h $1 | grep -v "Mounted on" | awk '{print "$1 exists on " $1 " filesystem which is mounted on " $6 " partition."}')"
##	Even using echo doesn't produce value of $1 CLA.
#	df -h $1 | grep -v "Mounted on" | awk '{print "This file exists on " $1 " filesystem which is mounted on " $6 " partition."}'
#else
#	echo "$1 doesn't exist on system."
#fi
##############################################################################################################################################################
