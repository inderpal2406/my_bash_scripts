#!/bin/bash

###############################################################################
# File          : runlevel_service.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 5 May, 2019
# Updated       : 5 May, 2019
# Description	: This script is interactive.
#		  It will display user's home directory, terminal type. 
#		  It'll then detect the current run level.
#		  It'll then ask for user input.
#		  It'll then display the services started in current run level.
################################################################################

clear		#clear the screen


echo "The scirpt will display your home dirctory and terminal type. Press enter to continue."	#Display msg to user
read		#read enter key
echo		#Leave a line


echo "Your home directory is $HOME."		#Display home dir
echo						#Leave a line


echo "Your terminal type is $TERM."		#Display term type
echo 						#Leave a line


##############################################################################
# run level related functions
##############################################################################

functionif ()
{
	if [ "$1" = "Y" ]
	then
		count=`ls -l /etc/rc$2.d/ | tail +2 | wc -l`						#Count no of services started in current run level 
		echo "No. of services started in run level $2 is $count. These are as follows,"		#Display no of services
		echo											#Leave a line
		ls /etc/rc$2.d/										#Display services started in current run level 
		echo
	elif [ "$1" = "N" ]		
	then
		echo "Okay, if you don't want to know the services started in current run level."
		echo
	else
		echo "Invalid input."
		echo
		readchoice $2
	fi
}


readchoice ()
{
	echo -n "Press Y for yes and N for no: "
	read choice
	echo
	functionif $choice $1
}


# Detect the current run level
runlevel=`who -r | awk '{print $2}'`


echo "The system is currently in run level $runlevel."
echo


echo "Do you wish to see the services started in run level $runlevel?"
echo
readchoice $runlevel


echo "The script ends here."
