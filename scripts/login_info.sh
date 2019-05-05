#!/bin/bash

###############################################################################
# File          : login_info.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 5 May, 2019
# Updated       : 5 May, 2019
# Description   : Display system related stats when user logs in.
################################################################################

echo "Hello $USER. We hope you're doing well."
echo
echo "You have logged in to the system $HOSTNAME."
echo
echo "Today's date is `date '+%d %b %Y'`"
echo
echo "Time: `date '+%r'`"
echo
user_count=`who -u | wc -l`
if [ $user_count -ne 1 ]
then 
	echo "There are more users logged in. They are as below,"
	w | tail +2
else
	echo "No other user currently logged in except you."
fi

# The script ends here.
