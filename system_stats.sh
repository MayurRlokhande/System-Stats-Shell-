#!/bin/bash

echo "###########################################################################"
echo "Please Enter Your Name "
read name
sleep 2
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " Hello $name!  Please see below Your System stats"
echo " "
echo "******************** Current Date and Time ************************ "
date | awk '{print "Today is " $3 " - " $2 "; Day = " $1 " ; Time: " $4 }'

echo "~~~~~~~~~~~~~~~~~~~~~Disk Space Availabel~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
df -H | xargs | awk '{print "Disk Space Size: "$9 " , Used: " $10 " , Avail: " $11 }'
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~USER UPTIME~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
uptime
echo " "
echo "~~~~~~~~~~~~~~~~~~~~LAST USER DETAILS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
last | head -2
echo " "
echo "~~~~~~~~~~~~~~~~~~~~CURRENTLY CONNECTED~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
w
echo " "
echo "#############################################################################"
