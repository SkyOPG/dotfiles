#!/bin/bash

current_layout=$(setxkbmap -query | awk '/layout/ {print $2}')

if [ "$current_layout" == "us" ]; then
    setxkbmap fr
else
    setxkbmap us
fi
