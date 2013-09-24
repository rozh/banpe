#!/bin/sh
id=`ps aux | grep skype | grep -v grep | tr -s ' ' | cut -d ' ' -f2`
if [ $id ];
then
    # echo $id
    kill $id
fi

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
`echo 'DISPLAY=:0.0 skype' | at now+${delay}`
