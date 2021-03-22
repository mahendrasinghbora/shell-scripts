#!/bin/bash
# A shell script that counts English language articles (a, an, the) in a given text file.

if [ $# -eq 0 ]; then
    echo ----------------------------------------
    echo -n "Name of the file: "
    read file
else
    file=$1
fi

if [ ! -f $file ]; then
    echo ----------------------------------------
    echo "'$file' is not a file. Aborting!"
    echo ----------------------------------------
    exit 1
fi

echo --------------------------------------------------
echo "Contents of the file '$file'"
echo --------------------------------------------------
cat $file

echo --------------------------------------------------
echo -n "Articles (a, an, the) in the file '$file': "
grep --only-matching --ignore-case --word-regexp -e 'a' -e 'an' -e 'the' $file | wc --lines
echo --------------------------------------------------
