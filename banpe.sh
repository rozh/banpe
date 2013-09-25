#!/bin/sh
python change_status.py

delay="1hour"
if [ $1 ];
then
    if [ $1 -lt 10 ];
    then
        delay="${1}hour"
    else
        delay="${1}minute"
    fi
fi
# echo $delay
echo 'python change_status.py 0' | at now+${delay}
