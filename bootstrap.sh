#!/bin/bash
set -m
#192.168.50.72 HOST
host=${CLAMD_HOST:- localhost}
port=${CLAMD_PORT:-3310}
filesize=${MAXSIZE:-10240MB}
timeout=${TIMEOUT:-10000}

echo "using clamd server: $host:$port"

# start in background
#java -jar /var/clamav-rest/clamav-rest-1.0.2.jar --clamd.host=$host --clamd.port=$port
java -jar /Users/shrivastavaanant/IdeaProjects/clamav-rest-master/target/clamav-rest-0.0.1.jar --clamd.host=$host --clamd.port=$port --clamd.maxfilesize=$filesize --clamd.maxrequestsize=$filesize --clamd.timeout=$timeout