#!/bin/bash
trap "exit" SIGINT
interval=$INTERVAL
[ -z "$interval" ] && interval=$1
[ -z "$interval" ] && interval=5
echo "interval = ${interval}"
mkdir htdocs
while :
do
    echo "Generating new uuid..."
    uuidgen > htdocs/index.html
    sleep $interval
done
