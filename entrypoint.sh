#!/bin/bash

FILE=/etc/secrets/ddclient.conf

while :
do
    ddclient -foreground -noquiet -verbose -file $FILE
    echo ""
    echo "Exited. Restarting in 60 seconds."
    echo ""
    sleep 60
done