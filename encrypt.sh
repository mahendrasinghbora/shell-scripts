#!/bin/bash
# A shell script to encrypt any text file.

if [ $# -eq 0 ]; then
    echo -n "Name of the file: "
    read file
else
    file=$1
fi

if [ ! -f $file ]; then
    echo "'$file' is not a file. Aborting!"
    exit 1
fi

echo -n "Password to be used for encryption: "
read -s password

encrypted="_encrypted"
new_name="$file$encrypted"

crypt $password <$file >$new_name

echo "'$file' successfully encrypted. The encrypted file is '$new_name'."
