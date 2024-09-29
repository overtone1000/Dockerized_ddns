#!/bin/bash

while :
do
    echo "Starting ddclient in foreground"
    RESULT=$(ddclient -foreground -noquiet -verbose -debug -file /etc/ddclient/ddclient.conf)
    echo "Exited with result $RESULT. Restarting in 5 seconds."
    sleep 60
done