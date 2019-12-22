#!/usr/bin/env bash

###############################################################################
# File          : food.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 22 Dec, 2019
# Updated       : 22 Dec, 2019
# Description   : food.sh is being called from zoo.sh
#		: arguments of zoo.sh are supplied to food.sh
#		: food.sh reads these arguments as $1 and $2 only. 
#		: So, $animal and $food variables need to be re-initialized.
#		: If we think, $animal and $food variables are passed to food.sh from zoo.sh as it is, then we're wrong.
#		: This is because of scope of variables is limited to only the parent process unless we export them.
################################################################################

# Reading command line arguments supplied and storing them in variables
animal=$1
food=$2

if [ "$animal" == "penguin" ]
then
	if [ "$food" == "fish" ]
	then
		exit 0
	else
		exit 1
	fi
elif [ "$animal" == "monkey" ]
then
	if [ "$food" == "banana" ]
	then
		exit 0
	else
		exit 1
	fi
elif [ "$animal" == "bear" ]
then
	if [ "$food" == "honey" ]
	then
		exit 0
	else
		exit 1
	fi
else
	exit 2
fi

