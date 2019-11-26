#!/bin/bash

###############################################################################
# File          : backup.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 26 Nov, 2019
# Updated       : 26 Nov, 2019
# Description   : Creates backup of user specified file or directory.
################################################################################


# Defining variables
BACKUP_DIR="/backup/$USER"

# Defining initial greet message function
initial_greet ()
{
	echo "This script will create backup of the file or directory which you'll specify."
	echo
	echo "Press enter to continue or CTRL+C to exit."
	read
}	 

# Function to check if /backup dir exists on system and has adequate permissions
check_dir ()
{
	if ! [[ -d /backup ]]
	then
		sudo -s <<EOF
		mkdir /backup
		chmod -R 777 /backup
		EOF
	fi
}

# Function to read user input
read_input ()
{
	echo -n "Please enter the complete absolute path to the file or directory which you want to backup: "
	read SOURCE
	echo
}

# Function to create backup
create_backup ()
{
	echo "Creating backup..."
	mkdir -p $BACKUP_DIR
	tar -czf $BACKUP_DIR/$SOURCE.tar
