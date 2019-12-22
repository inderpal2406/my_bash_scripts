#!/usr/bin/env bash

###############################################################################
# File          : zoo.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 22 Dec, 2019
# Updated       : 22 Dec, 2019
# Description   : A script to present food to animals.
#		: This script demonstrates calling of another script from within a script.
#		: The food.sh script is called with arguments passed to zoo.sh
#		: Depending on the exit status of food.sh, further processing is performed.
################################################################################

# Define function
usage ()
{
	echo "Script usage: $0 animal_name food_name"
}

# Clear screen
clear

# Check number of arguments supplied.
if [ $# -ne 2 ]
then
	echo "This script provides food to the animals penguin, monkey and bear."
	usage
	exit 1
fi

# Initialize variables
animal=$1
food=$2

# Call other script
$PWD/food.sh $animal $food

# Case construct to evaluate exit status of food.sh script
case $? in

0)
	echo "Yippee!! $animal likes $food!!"
	;;
1)
	echo "Oh nooo!! $animal doesn't like $food!!"
	;;
2)
	echo "There is only penguin, monkey and bear in our zoo."
	echo "So, provide them either fish, banana or honey in correct way."
	usage
	;;
esac
