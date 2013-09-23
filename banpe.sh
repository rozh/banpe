#!/bin/sh
id=`ps aux | grep skype | grep -v grep | tr -s ' ' | cut -d ' ' -f2`
if [ $id ];
then
    echo $id
    kill $id
fi

delay="1minute"
# if [ $1 ];
# then
#     if [ $1 -lt 10 ];
#     then
#         delay="$1hour"
#     else
#         delay="$1minute"
#     fi
# fi
echo $delay
`echo "/usr/bin/skype" | at now + $delay`
