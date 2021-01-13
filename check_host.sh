#!/bin/bash
if [ -z "$1" ]; then
   echo 'Enter host or IP as first parameter!'
   exit 1
fi

while true;
do
	if ping -c 1 $1 &> /dev/null
	then
	  #reachable
	  echo 'online' > /dev/null
	else
	  echo $1 ' is no longer reachable'
	  osascript -e 'display notification " '$1' is no longer reachable" sound name "Submarine"'
	  exit
	fi
	sleep 5
done
