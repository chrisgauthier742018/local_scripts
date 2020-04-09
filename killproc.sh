#!/usr/bin/bash


ps -aux | grep -v "$1" | awk '{print $2}' | xargs -I{} kill {}
