#!/bin/bash
trap "exit" SIGINT
interval=$INTERVAL
[ -z "$interval" ] && interval=$1
[ -z "$interval" ] && interval=5
echo "interval = ${interval}"
while :
do
    echo "Generating new uuid..."
    uuidgen
    sleep $interval
done
