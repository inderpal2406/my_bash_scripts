#!/usr/bin/env bash

###############################################################################
# File          : process.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 22 Dec, 2019
# Updated       : 22 Dec, 2019
# Description   : A generalised script which can be used to start/stop/restart/check_status of a process
################################################################################

# Define correct usage function
usage ()
{
	echo "Correct Usage: $0 {start|stop|restart|status}"
}

# Define dealy function used to display progressive dots.
delay ()
{
	for i in 1 2 3 4 5 6 7
	do
		echo -n "."
		sleep 1
	done
}

# Clear screen
clear

# Check no of arguments
if [ $# -ne 1 ]
then
	usage
	exit 1
fi

# Define case construct
case $1 in

start)
	echo "The process will be started now."
	echo -n "Starting"
	delay
	echo
	echo "Process started successfully."
	;;
stop)
	echo "The process will be stopped now."
	echo -n "Stopping"
	delay
	echo
	echo "Process stopped successfully."
	;;
restart)
	echo "The process will be restarted now."
	echo -n "Restarting"
	delay
	echo
	echo "Process restarted successfully."
	;;
status)
	echo "The process status will be checked now."
	echo -n "Checking status"
	delay
	echo
	echo "The process is in running/stopped state now."
	;;
*)
	echo "Incorrect option!"
	usage
	;;
esac
