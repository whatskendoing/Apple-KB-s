#!/bin/sh
# Reference: https://support.apple.com/en-us/HT202481

    while IFS="/n" read -r line
    do
        /usr/bin/nc -vz -4 -w 2 $line >> HT202481.log 2>&1
    done < HT202481.conf
    echo $IFS
