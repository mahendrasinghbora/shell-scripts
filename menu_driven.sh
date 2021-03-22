#!/bin/bash
# A menu- driven program for the following options
# 1. List of files
# 2. Processes of Users
# 3. Today’s Date
# 4. Quit out of Unix

echo -----------------------
echo "1 - List of files"
echo "2 - Processes of Users"
echo "3 - Today’s Date"
echo "4 - Quit out of Unix"
echo -----------------------

echo -n "Choice: "
read choice

case $choice in
1)
    echo ----------------------------------------------------
    echo -n "List of files in "
    pwd
    echo ----------------------------------------------------
    ls -1
    echo ----------------------------------------------------
    ;;
2)
    echo -------------------------------
    echo "Processes of '$USER'"
    echo -------------------------------
    ps --user $USER
    echo -------------------------------
    ;;
3)
    echo -------------------------------
    echo -n "Today's Date: "
    date '+%d %B %Y'
    echo -------------------------------
    ;;
4)
    echo ----------
    echo "Exiting!"
    echo ----------
    exit
    ;;
*)
    echo "Please enter a valid option!"
    ;;
esac
