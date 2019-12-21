#!/usr/bin/env bash

###############################################################################
# File          : top_three_disks.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 21 Dec, 2019
# Updated       : 21 Dec, 2019
# Description   : Lets us know top three disks according to their utilization.
#		: Could be configured via crontab to run daily and mail report by using commented code to mail in the last.
# Crontab	: 0 0 * * * /path/to/script/top_three_disk.sh 
###############################################################################

clear
echo "This script will list the top three disks according to their % utilization."
echo "Press enter to continue."
read
echo
echo "The top three disks are:"
echo

df -h | sort -nrk 5 | head -3 | awk '{print $1 "\t: " $5 " full!\tMounted on partition:\t" $6}'

echo
echo "The script ends here."

# Code to mail
# df -h | sort -nrk 5 | head -3 | awk '{print $1 "\t: " $5 " full!\tMounted on partition:\t" $6}' | mail -s "Top Three Disks" email@domain.com
