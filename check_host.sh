if [ -z "$1" ]; then
   echo 'Enter host or IP as first parameter!'
   exit 1
fi

while true;
do
	ping -c5 $1 &> /dev/null
        if [[ $? -ne 0 ]]; then
	   echo 'offline'
           echo $1 ' is no longer reachable'
           osascript -e 'display notification " '$1' is no longer reachable" sound name "Submarine"'
	   exit
	else
  	   echo 'online' # if you want feedback when OK
	   echo 'online' > /dev/null # if you don't want feedback when host OK
	fi
	sleep 10
done
