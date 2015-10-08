#!/bin/bash

PATH=`echo $PATH`

PROCESS=`ps ax | grep -v grep | grep slave | grep -v Display | awk '{ print $1 }'`

kill -9 $PROCESS
