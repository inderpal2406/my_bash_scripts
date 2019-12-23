#!/usr/bin/env bash

###############################################################################
# File          : here_2.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 23 Dec, 2019
# Updated       : 23 Dec, 2019
# Description   : A script to demonstrate use of here document.
################################################################################

# This script will automatically install a package using yum
# It will automatically supply y as input to confirm package download and installation.

clear	# clear screen

# Check no of arguments supplied
if [ $# -ne 1 ]
then
	echo "Usage: $0 package_name"
	echo "Exiting"
	exit 1
fi

# Install $1 package
yum install $1 << EOF
y
EOF

# The yes input to the yum install command is installed by the here document.
