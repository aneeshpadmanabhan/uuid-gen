#!/bin/bash
trap "exit" SIGINT
mkdir htdocs
while :
do
    uuidgen > htdocs/index.html
    sleep 10
done
