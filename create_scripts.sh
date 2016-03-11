#!/bin/bash

URL=$1
USERNAME=$2
PASSWORD=$3

ENVIRONAME=$(uname)

if [ ${ENVIRONAME} == 'Darwin' ]
    then
        DATENOW=$(date +%Y-%m-%dT%H:%M:%SZ)
        sed -e "s;%DATENOW%;${DATENOW};g" ./Templates/date.template > date.txt
    else
        DATENOW=$(date /T)
        sed -e "s;%DATENOW%;${DATENOW};g" ./Templates/date.template > date.txt
fi

sed -e "s;%URL%;${URL};g" ./Templates/url.template > url.txt
sed -e "s;%URL%;${URL};g" -e "s;%USERNAME%;${USERNAME};g" -e "s;%PASSWORD%;${PASSWORD};g" ./Templates/get_token.template > get_token.sh

chmod +x *