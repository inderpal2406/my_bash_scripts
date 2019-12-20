#!/usr/bin/env bash

###############################################################################
# File          : weight.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 20 Dec, 2019
# Updated       : 20 Dec, 2019
# Description   : Gets user weight (in kilos) and height (in cms) via command line arguments.
#		: Processes weight and height and displays a message.
################################################################################

clear
echo "Usage: $0 weight(in kilos) height(in cms)"
echo "Press enter to continue or CTRL+C to exit."
read

clear
weight=$1
height=$2
ideal_weight=$[ $height - 110 ]
if [ $weight -le $ideal_weight ]
then
	echo "You should eat a bit more fat."
else
	echo "You should eat a bit more fruit."
fi

# Executing above lgic in one statement as below,
# test $1 -le $[ $2 - 110 ] && (echo "You should eat a bit more fat.") || (echo "You should eat a bit more fruit.")
