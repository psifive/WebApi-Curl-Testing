#!/bin/bash

URL=$1
USERNAME=$2
PASSWORD=$3
DATENOW=$(date +%Y-%m-%dT%H:%M:%SZ)

sed -e "s;%DATENOW%";${DATENOW};g" ./Templates/datenow.template > date.txt
sed -e "s;%URL%;${URL};g" ./Templates/url.template > url.txt
sed -e "s;%URL%;${URL};g" -e "s;%USERNAME%;${USERNAME};g" -e "s;%PASSWORD%;${PASSWORD};g" ./Templates/get_token.template > get_token.sh

chmod +x *