#!/usr/bin/bash

#Checking to see logins by date
read -p "Enter a month (ie, Aug): " month
read -p "Enter day of month (ie,7): " dayofmonth
read -p "Enter day of week (ie, Mon): " dayofweek

last | grep -i "${dayofweek} ${month} ${dayofmon}"


