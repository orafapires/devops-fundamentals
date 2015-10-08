#!/bin/bash

PATH=`echo $PATH`
LOG="/var/log/jenkins/jenkins.log"
SLAVE="macmini"

tail -fn 0 $LOG | while read line ; do
        echo "$line" | grep -o "$SLAVE terminated\|$SLAVE offline"
        if [ $? = 0 ]
        then
                ssh -tt $SLAVE './kill-slave.sh'
        fi
done
