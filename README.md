# bash_scripts
Collection of usefull bash scripts





## check_host.sh
**Notification if  ip or host just went offline.**

![GitHub Logo](/IMAGES/check_host.png)

Bash script that checks (every 10sec) if a specific host, website or IP-address is no longer online (reachable via ping).
To be be used on OSX, since it use Applescript to gives notification on OSX.
Each iteration 5 pings are sent.


Usage:

```./check_host.sh {{HOST-OR-IP-ADRESS-HERE}}```
