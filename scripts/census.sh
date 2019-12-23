#!/usr/bin/env bash

###############################################################################
# File          : census.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 23 Dec, 2019
# Updated       : 23 Dec, 2019
# Description   : Record user data for census purpose.
#		: The $datafile has data arranged in fields: "name:gender:number:insurance:education:rights"
#		: Few fields are assigned default values according to gender.
#		: The $datafile should have write permissions for all, as everyone will be writing to it.
################################################################################

# Initiate variable to hold data file's path
datafile="/var/tmp/inderpal2406/datafile"

# Clear screen
clear

# Display message about what this script will do and ask for confirmation to proceed.
echo "Hello $USER ... This script will record your data for census purpose."
echo "Press ENTER to proceed."
read
echo

# Ask for name
read -p "Enter your name and press [ENTER]: " name

# Check if name is already present in datafile
grep -i "$name" $datafile >/dev/null 
if [ $? -eq 0 ]
then
	echo "$name has already entered data."
	echo "Below are the details,"
	grep -i "$name" $datafile
	echo "Exiting script..."
	exit 1
fi

# If contact has already not entered data, then ask for further details 
read -ep "Enter your gender [m|f|t]: " -n 1 gender
read -p "Enter your contact number with country code [+91 8898****22] and press [ENTER]: " number

# Ask for further details based on gender and initialise other not-applicable [NA] details based on gender
if [ "$gender" == "m" ]
then
	read -ep "Enter if you're medically insured [Y|N] " -n1 insurance
	education="NA"
	rights="NA"
elif [ "$gender" == "f" ]
then
	read -p "Enter your most recent education [Upto SSC|SSC|HSC|Graduate|Post-graduate] and press [ENTER]: " education
	insurance="NA"
	rights="NA"
else
	read -ep "Are you aware of your rights? [Y|N] " -n1 rights
	insurance="NA"
	education="NA"
fi

# Enter details into adress book and notify user
echo "$name:$gender:$number:$insurance:$education:$rights" >> $datafile
echo "Your details have been successfully saved."
