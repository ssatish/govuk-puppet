#!/bin/bash

source /etc/pingdom.sh

CHECK=$1

[ -z "$PASSWORD" ] && echo "Need to set PASSWORD" && exit 1;
[ -z "$KEY" ] && echo "Need to set KEY" && exit 1;
[ -z "$USER" ] && echo "Need to set USER" && exit 1;

pingdom_down=`curl --connect-timeout 5 -s https://api.pingdom.com/ >/dev/null 2>&1`

if [ $pingdom_down == 28 ]; then
  echo "UNKNOWN: Pingdom API Down"
  exit 3
fi

result=`curl --silent --header "App-Key: ${KEY}" --user ${USER}:${PASSWORD} https://api.pingdom.com/api/2.0/checks/${CHECK}`

if [[ $? == 6 ]]; then
  echo "UNAVAILABLE"
  exit 3
fi

echo $result | grep 'status":"up"' > /dev/null

if [[ $? == 0 ]]; then
  echo "OK"
  exit 0
else
  echo "CRITICAL"
  exit 2
fi
