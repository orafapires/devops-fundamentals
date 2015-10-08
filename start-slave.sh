#!/bin/bash

export PATH=`echo $PATH`

MASTER='172.16.101.12'
PORT='8080'
SECRET='33f3be5e134882b52445cd631be07e3781952e3974d852aef6240d7f8642da82'
SERVICE='slave-agent'
SLAVE='android'

while [ "$RESPONSE" != "302" ]; do
	RESPONSE=`curl -o /dev/null --silent --head --write-out '%{http_code}\n' http://$MASTER:$PORT/cli`
done

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "$SERVICE running, everything is fine"
else
    java -jar slave.jar -jnlpUrl http://$MASTER:$PORT/computer/$SLAVE/slave-agent.jnlp -secret $SECRET
fi
