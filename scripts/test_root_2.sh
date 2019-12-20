#!/bin/bash

###############################################################################
# File          : test_root_2.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 20 Dec, 2019
# Updated       : 20 Dec, 2019
# Description   : Checks if the user who calls/executes the script is root or not.
#		  If we execute this script using sudo, then it's the root user who executes this script.
#		  Executing script using sudo is "sudo ./test_root.sh"
#		  This logic can be used in scripts which needs to be executed as root user and should immediately terminate if some other user invokes it. 
################################################################################


if [ "$(whoami)" != "root" ]
then
	echo "You don't have permission to run to run $0 as a non root user."
	exit 1
else
	echo "\$0 = $0"
	echo "This is root user."
fi
