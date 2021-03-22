#!/bin/bash
# A shell script like a more command. It asks the user name, the name of the file on command prompt and displays only the 15 lines of the file at a time on the screen. Further, next 15 lines will be displayed only when the user presses the enter key/any other key.

function pause() {
    read -p "$*"
}

echo -----------------------------------------
echo -n "Enter your name: "
read name
echo -----------------------------------------
echo -n "Name of the file: "
read file

if [ ! -f $file ]; then
    echo -----------------------------------------
    echo "'$file' is not a file. Aborting!"
    echo -----------------------------------------
    exit 1
fi

counter=1

while IFS= read -r line; do
    array[${#array[*]}]="$line"
done <$file

array=()                    # Create array
while IFS= read -r line; do # Read a line
    array+=("$line")        # Append line to the array
done <$file

echo ----------------------------------------------------------
echo "Contents of the file '$file' (15 lines at a time)"
echo ----------------------------------------------------------

for e in "${array[@]}"; do
    flag=$(expr $counter % 16)
    if [ $flag -eq 0 ]; then
        echo "----------------------------------------------------------"
        pause "Press the [Enter] key to continue..."
        echo "----------------------------------------------------------"
    fi
    counter=$(expr $counter + 1)
    echo "$e"
done
echo ----------------------------------------------------------
