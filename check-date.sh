#!/bin/bash

PATH=`echo $PATH`
LOGFB="/opt/jenkins/jobs/cs-UPMR-ios/builds/lastFailedBuild/log"

VERSION=`grep -o '[1-9]''[1-9]'-'[0-9]''[0-9]'-2015-'[0-9]''[0-9]'h-'[0-9]''[0-9]'m $LOGFB`
echo $VERSION
