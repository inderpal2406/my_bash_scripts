#!/usr/bin/env bash

###############################################################################
# File          : address_book.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 23 Dec, 2019
# Updated       : 23 Dec, 2019
# Description   : To store contact details into an address book
#		: The $address_book should have write permissions for all, as everyone will be writing to it.
################################################################################

# Initiate variable to hold address book's path
address_book="/var/tmp/inderpal2406/address_book"

# Clear screen
clear

# Display message about what this script will do and ask for confirmation to proceed.
echo "Hello $USER ... This script will add your details to inderpal2406's address_book."
echo "Press ENTER to proceed."
read
echo

# Ask for contact name
read -p "Enter your name and press [ENTER]: " name

# Check if contact is already registered in address book
grep -i "$name" $address_book >/dev/null 
if [ $? -eq 0 ]
then
	echo "$name is already registered in address book."
	echo "Below are the details,"
	grep -i "$name" $address_book
	exit 1
fi

# If contact is already not registered in address book, then ask for further details 
read -ep "Enter your gender [m|f|t]: " -n 1 gender
read -p "Enter your contact number with country code [+91 8898****22] and press [ENTER]: " number

# Enter details into adress book and notify user
echo "$name:$gender:$number" >> $address_book
echo "Your details have been successfully saved."
