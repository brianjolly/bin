#!/bin/bash

PIC=$1

# if arg is empty pick random photo from pic folder
if [ -z $PIC ]; then
    files=(/home/brian/pic/*)
    #printf "%s\n" "${files[RANDOM % ${#files[@]}]}"
    PIC="${files[RANDOM % ${#files[@]}]}"
    #echo $PIC
fi

feh --bg-fill $PIC
