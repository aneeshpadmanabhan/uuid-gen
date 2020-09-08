#!/bin/bash
trap "exit" SIGINT
mkdir htdocs
while :
do
    echo "Generating new uuid..."
    uuidgen > htdocs/index.html
    sleep 10
done
