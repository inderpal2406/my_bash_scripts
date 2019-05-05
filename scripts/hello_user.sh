#!/bin/bash

###############################################################################
# File		: hello_user.sh
# Author	: Inderpal Singh Saini <inderpal2406@gmail.com>
# Created	: 5 May, 2019
# Updated	: 5 May, 2019
# Description	: This script will clear the screen and display "Hello USERNAME!" message.
# 		  Then it'll generate a random number on its own, supply it to a case statement.
# 		  Then it'll display a random quote based on the random number.
#
# Note on $RANDOM.
# When we do echo $RANDOM, it'll produce a random number between 0 to 32767.
# So, we divide the random number with 10, and take the remainder.
# The remainder will be always between 0 and 9.
################################################################################

clear						# clears screen
echo "Hello $USER :)"				# display message
echo						# leave a line in output
echo "Quote for the day is:"
echo

random=`echo $((RANDOM % 10))`			# read about $RANDOM in script begining

case $random in					# case statement

0)	echo "Attitude determines altitude :)"
	;;

1)	echo "Why be busy, be productive instead :)"
	;;

2)	echo "If you don't build you dream, then someone else hires you to build theirs."
	;;

3)	echo "When the going gets tough, the tough gets going..."
	;;

4)	echo "I'll win, not immediately but definitely :)"
	;;

5)	echo "Stop wishing, Start doing :P"
	;;

6)	echo "People lie, actioons don't..."
	;;

7)	echo "The best apology is changed behavior."
	;;

8)	echo "It's not about how big the house is, it's about how happy the home is :)"
	;;

9)	echo "Always aspire for big dreams :)"
	;;

esac						# case statement ends

# The script ends here
