#!/bin/bash

URL=$1
USERNAME=$2
PASSWORD=$3

sed -e "s;%URL%;${URL};g" ./Templates/url.template > url.txt
sed -e "s;%URL%;${URL};g" -e "s;%USERNAME%;${USERNAME};g" -e "s;%PASSWORD%;${PASSWORD};g" ./Templates/get_token.template > get_token.sh

chmod +x *