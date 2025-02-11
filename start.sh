#!/bin/bash
cd "$(dirname "$0")"
CURRENT_VERSION="9.0.0"

if ! screen -list | grep -q "mc"; then
	echo "Server is starting!"
	sed s/WA_VERSION/$CURRENT_VERSION/g server.properties.template > server.properties
	sudo screen -dmS mc sudo java -server -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:ParallelGCThreads=1 -XX:+AggressiveOpts -Xms1G -Xmx4G -jar Thermos-1.7.10-1614-server.jar nogui
else
	echo "Server already started!";
fi
