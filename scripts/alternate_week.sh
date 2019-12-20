#!/bin/bash

###############################################################################
# File          : alternate_week.sh
# Author        : Inderpal Singh Saini <inderpal2406@gmail.com>
# Created       : 20 Dec, 2019
# Updated       : 20 Dec, 2019
# Description   : Checks if it is an even week of the year and reminds us about our Music class.
#               : Also checks if it is an odd week of the year and reminds us about our Dance class.
#               : This can be executed on every Sunday via crontab as music and dance classes are on Sundays :)
# Note          : date command checks week with Monday as the starting day. %W can get values betwwen 0 to 53 only.
#               : So, if we check on Sunday, then it is for the past week, as Sunday would be last day of the week.
# Crontab entry : 0 0 * * 0 /path/to/script/alternate_week.sh
#               : This will be executed at midnight of every Sunday.
################################################################################

week_offset=$[ $(date +"%W") % 2 ]

if [ $week_offset -eq 0 ]
then
        echo "We have our music class today at 10 am." | mailx -s "Music class today at 10 am" inderpal2406@gmail.com
else
        echo "We have our dance class today at 10 am." | mailx -s "Dance class today at 10 am" inderpal2406@gmail.com
fi
