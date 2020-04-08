#!/usr/bin/bash

#Checking to see logins by date
read -p "Enter a day (ie, Mon): " DATE

last | grep ${DATE}

