#!/bin/bash
# A shell script which will replace each occurrence of character c with the characters chr in a string s. It should also display the number of replacements.

echo --------------------------------------------
echo -n "Enter a string: "
read s

echo --------------------------------------------
echo -n "Character to be replaced: "
read c

echo --------------------------------------------
echo -n "Replace with: "
read chr

echo --------------------------------------------
echo -n "String after replacing '$c' with '$chr': "
s=$(expr "$s" | tr $c $chr)
echo $s
echo --------------------------------------------
