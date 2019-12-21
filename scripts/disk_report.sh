#!/usr/bin/env bash

###############################################################################
# File          : disk_report.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 21 Dec, 2019
# Updated       : 21 Dec, 2019
# Description   : Checks all disk utilization.
#		: Extracts the disks utilized upto 80% or more.
#		: Mails report of critical disks.
#		: If everything is normal, then sends normal report.
#		: Can be scheduled to run everyday using crontab and mail report to our email id.
# Crontab	: 0 0 * * * /path/to/script/disk_test.sh
################################################################################

# Logic to find if at least one disk is utilized upto 80% or more. 
# If yes, then send Critical report mail.
# If not then send normal report mail.

test=$(df -h | awk '{print $5}' | grep % | grep -v Use | sort -n | tail -1 | cut -d"%" -f1)

if [ $test -ge 80 ]
then
	df -h | \
	awk \
		'BEGIN {print "********************WARNING WARNING WARNING********************"} \
		/100%|[8|9][0-9]%/ {print $1 "\t: " $5 " full!\tMounted on partition:\t" $6} \
		END {print "**********************Give money to disks**********************"}' | \
	mailx -s "Disk Report Critical" inderpal2406@gmail.com
else
	echo "All disks are under critical utilization percentage." | mailx -s "Disk Report Normal." inderpal2406@gmail.com
fi
