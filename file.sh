#!/bin/bash
# A shell program which accepts the name of a file from the standard input and then performs the following test on it.
# 1. File Existence
# 2. File Readable and Writable

read_file() {
    echo ----------------------------
    echo -n "Name of the file: "
    read file
}

file_existence() {
    if [ ! -f $file ]; then
        echo -------------------------------------------------
        echo "Either '$file' is not a file or it does not exist."
        echo -------------------------------------------------
        exit 1
    fi
}

echo ----------------------------------------------
echo "1 - Check if a file exists or not"
echo "2 - Check if a file is readable and writable"
echo ----------------------------------------------

echo -n "Choice: "
read choice

case $choice in
1)
    read_file
    file_existence
    echo ----------------------------
    echo "'$file' exists."
    echo ----------------------------
    ;;
2)
    read_file
    file_existence
    # Checks for redability
    if [ -r $file ]; then
        echo ----------------------------
        echo "'$file' is readable."
    else
        echo ----------------------------
        echo "'$file' is not readable."
    fi
    # Checks for writability
    if [ -w $file ]; then
        echo ----------------------------
        echo "'$file' is writable."
    else
        echo ----------------------------
        echo "'$file' is not writable."
    fi
    echo ----------------------------
    ;;
*)
    echo "Please enter a valid option!"
    ;;
esac
