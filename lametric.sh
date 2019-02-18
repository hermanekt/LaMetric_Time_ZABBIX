#!/bin/bash

# https://github.com/hermanekt/LaMetric_Time_ZABBIX
# info@tomashermanek.cz

# Usage PROBLEM ./lametric.sh "DB si Down" "Warning" "PROBLEM"
# Usage OK ./lametric.sh "DB si Down" "Warning" "OK"

#Default icon:
#<prefix> is “i” (for static icon) or “a” (for animation)
#Not classified=a27030
#Information=a27031
#Warning=a27032
#Average=a27033
#High=a27034
#Disaster=a27003
#OK=a8858
#Unknown=a27028

# Lametric developer URL and token
LAMETRIC_DEVELOPER_URL='https://developer.lametric.com/api/v1/dev/widget/update/com.lametric.YOUR_APP_ID'
LAMETRIC_ACCESS_TOKEN='XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'

# If message is not set print not set
if [ -z "$1" ]; then 
    MESSAGE_TEXT='Message is not set'
else 
    MESSAGE_TEXT=$1
fi

# If severity is not set display ERROR icon
if [ -z "$2" ]; then
    SEVERITY_ICON='"a27003"'
else
	if [[ $2 == "Not classified" ]]; then	
      SEVERITY_ICON='"a27030"'
	elif [ $2 == "Information" ]; then	
      SEVERITY_ICON='"a27031"'
	elif [ $2 == "Warning" ]; then	
	  SEVERITY_ICON='"a27032"'
	elif [ $2 == "Average" ]; then	
      SEVERITY_ICON='"a27033"'
	elif [ $2 == "High" ]; then	
      SEVERITY_ICON='"a27034"'
	elif [ $2 == "Disaster" ]; then	
      SEVERITY_ICON='"a27003"'
    else
	  SEVERITY_ICON='"a27003"'
	fi
fi

# If is problem resolved show green icon, if variable $3 is not set, show red icon
if [ -z "$3" ]; then
	#?=27028
    SEVERITY_ICON='"a27028"'
fi

if [[ $3 == "OK" ]]; then
	#Default icon:
	#OK=8858
	SEVERITY_ICON='"a27046"'
fi

#Default icon and text
json1='{"frames": [{"text": "'
json2='","icon": '
json3='}]}'
message=$json1$MESSAGE_TEXT$json2$SEVERITY_ICON$json3

#You can uncoment for debug.
echo $message

curl -X POST \
-H "Accept: application/json" \
-H "X-Access-Token: $LAMETRIC_ACCESS_TOKEN" \
-H "Cache-Control: no-cache" \
-d "`echo $message`" \
$LAMETRIC_DEVELOPER_URL
