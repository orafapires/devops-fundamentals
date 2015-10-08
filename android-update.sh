#!/bin/bash

UPDATE=`android list sdk --all | grep 'Repository' | awk '{ print $1 }' | sed 's/-//g'`

for i in $UPDATE
do
	echo "y" | android update sdk -u -a -t $i
done
