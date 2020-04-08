#!/usr/bin/bash


df -k | awk '{print $1 "\t" $3 "\t" $4}'
