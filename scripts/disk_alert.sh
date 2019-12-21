#!/usr/bin/env bash

###############################################################################
# File          : disk_alert.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 21 Dec, 2019
# Updated       : 21 Dec, 2019
# Description   : Checks disk utilization everyday with help of cron.
#		: The day it finds a disk to be utilized 80% or more, it sends a mail.
#		: The mail won't contain disk details. 
#		: The mail is just an alert to check all disk utilizations on the system.
# Crontab	: 0 0 * * * /path/to/script/disk_test.sh
################################################################################

# Defining variables

space=$(df -h | awk '{print $5}' | grep % | grep -v Use | sort -n | tail -1 | cut -d"%" -f1)
alert_value=80


# Comparing utilization

if [ $space -ge $alert_value ]
then
	echo "Atleast one of the disks is critically utilized. Please check." | mailx -s "Disk Critical" root
fi
