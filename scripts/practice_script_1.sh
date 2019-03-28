#!/bin/bash

#This script will display user's home directory, terminal type, and services started in run level 3.

clear		#clear the screen

echo "The scirpt will display your home dirctory and terminal type. Press enter to continue."		#Display msg to user
read		#read enter key
echo		#LEave a line
echo "Your home directory is $HOME."		#Display home dir
echo						#Leave a line
echo "Your terminal type is $TERM."		#Display term type
echo 						#Leave a line
echo "The script will now display services started in run level3. Press enter to continue."		#Display message
read		#read enter key
echo		#Leave a line
count=`ls -l /etc/rc3.d/ | tail +2 | wc -l`	#Count no of services started in run level 3
echo "No. of services started in run level 3 is $count. These are as follows,"				#Display no of services
echo		#Leave a line
ls /etc/rc3.d/	#Display services started in run level 3
