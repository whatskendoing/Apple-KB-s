#!/bin/sh
#Reference: https://support.apple.com/en-us/HT210060
#Download the HT210060.conf file to run this script properly.

    while IFS="/n" read -r line
    do
        /usr/bin/nc -vz -4 -w 2 $line >> ht210060.log 2>&1
    done < ht210060.conf
    echo $IFS
