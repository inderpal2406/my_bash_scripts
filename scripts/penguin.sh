#!/usr/bin/env bash

###############################################################################
# File          : penguin.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 20 Dec, 2019
# Updated       : 20 Dec, 2019
# Description   : Checks for command line arguments passed and processes them to present different outputs.
#		: Tux is our penguin. We present food to him as a command line argument.
################################################################################

if [ $# -eq 0 ]
then
	echo "Giving food to animals is a good deed. So, provide a food name after script name."
	echo "Example: ./penguin.sh fish"
	exit 1
fi

if [ "$1" == "fish" ]
then
	echo "Hmmmmm fish. Tux likes that."
else
	echo "Tux doesn't like $1. Tux likes fish."
fi
