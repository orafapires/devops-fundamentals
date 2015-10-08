#!/bin/bash

PATH=`echo $PATH`
LOG="/var/log/jenkins/jenkins.log"
SLAVE="android"

tail -fn 0 $LOG | while read line ; do
        echo "$line" | grep -o "$SLAVE terminated\|$SLAVE offline"
        if [ $? = 0 ]
        then
                ssh -tt $SLAVE './kill-slave.sh'
		exit 0
        fi
done
