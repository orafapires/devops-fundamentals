#!/bin/bash
#
# Checking Jenkins offline and restart if offline
#

JENKINS_URL="http://localhost"
JENKINS_NODENAME="android"

CHECKED=`curl --silent $JENKINS_URL/computer/$JENKINS_NODENAME/api/json | grep -Po '"offline":true' | cut -d':' -f2`
if [[ "$CHECKED" == "true" ]]; then
	ssh -tt $JENKINS_NODENAME './kill-slave.sh'
        exit 0
fi
echo "INFO: $JENKINS_NODENAME is online, no need to restart."
exit 0
