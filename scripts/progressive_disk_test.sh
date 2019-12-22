#!/usr/bin/env bash

###############################################################################
# File          : progressive_disk_test.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 22 Dec, 2019
# Updated       : 22 Dec, 2019
# Description   : Finds % utilization of the most utilized file system.
#		: Compares it in case construct and displays result.
#		: The case construct divides space utilization into different severity levels.
#		: Accordingly, the result is displayed regarding in which severity level current space lies.
#		: This can be configured to run daily via crontab and send the mail report.
# Crontab	: 0 0 * * * /path/to/script/progressive_disk_test.sh
################################################################################

# Assign variable to store % utilization of the most utilized file system
space=$(df -h | awk '{print $5}' | grep % | grep -v Use | sort -n | tail -1 | cut -d"%" -f1)

# Case construct
case $space in

7[0-9])
	Message="Start thinking about cleaning some stuff... There is a partition $space % full!"
	;;
8[0-9])
	Message="Better hurry with that new disk... One partition is $space % full!"
	;;
9[0-9])
	Message="I'm drowning here! There is a partition $space % full!"
	;;
100)
	Message="I seem to be running with a non-existent amount of space!"
	;;
*)
	Message="So far... So good..."
	;;
esac

echo $Message | mailx -s "Disk Report: $(date)" email-id@domain.com
