#!/bin/bash
# A shell script that displays the last modification time of any file.

echo ----------------------------
echo -n "Name of the file: "
read file

if [ ! -f $file ]; then
    echo -------------------------------------------------
    echo "Either '$file' is not a file or it does not exist."
    echo -------------------------------------------------
    exit 1
fi

find $file -maxdepth 0 -printf "The file '$file' was last modified on %TB %Td, %TY at %TH:%TM."
echo
