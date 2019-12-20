#!/bin/bash

###############################################################################
# File          : test_root.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 25 Nov, 2019
# Updated       : 25 Nov, 2019
# Description   : Checks if the user who calls/executes the script is root or not.
#		  If we execute this script using sudo, then it's the root user who executes this script.
#		  Executing script using sudo is "sudo ./test_root.sh"
#		  This logic can be used in scripts which needs to be executed as root user and should immediately terminate if some other user invokes it. 
################################################################################

user_id=`id -u`

if [ $user_id -ne 0 ]
then
	echo "This is not root user."
	exit 1	#we can instruct here that the script needs to be called using root user only.
else
	echo "This is root user."
fi
