#!/bin/bash
# A script called hello which outputs the following:
# 1. your username
# 2. the time and date
# 3. who is logged on

echo --------------------------------------------------
echo "Hello, $USER!"

echo "*************************"
echo -n "Time: "
date '+%H:%M'

echo "********************"
echo -n "Date: "
date '+%B %d, %Y'

echo "*********************************"
echo "List of users currently logged on"
echo "*********************************"
who
echo --------------------------------------------------
