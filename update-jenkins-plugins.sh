#!/bin/bash

PATH=`echo $PATH`
JENKINS_CLI="/home/mobileapp/Downloads/jenkins-cli.jar"
JENKINS_URL="http://127.0.0.1:8080/"
ACCESS="concrete"

# Login authentication
java -jar $JENKINS_CLI -s $JENKINS_URL login --username $ACCESS --password $ACCESS

# Update plugins
UPDATE_LIST=$( java -jar $JENKINS_CLI -s $JENKINS_URL list-plugins | grep -e ')$' | awk '{ print $1 }' | grep -v "android-device-connector" ); 
if [ ! -z "${UPDATE_LIST}" ]; then 
    echo Updating Jenkins Plugins: ${UPDATE_LIST} > /tmp/update-jenkins-plugins.txt;
    java -jar $JENKINS_CLI -s $JENKINS_URL install-plugin ${UPDATE_LIST};
    java -jar $JENKINS_CLI -s $JENKINS_URL safe-restart;
fi
