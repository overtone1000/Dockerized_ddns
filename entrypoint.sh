#!/bin/bash

FILE=/etc/ddclient/ddclient.conf
USER=$(whoami)
chown $USER $FILE 

while :
do
    echo "Starting ddclient in foreground"
    RESULT=$(ddclient -foreground -noquiet -verbose -debug -file $FILE)
    echo "Exited with result $RESULT. Restarting in 60 seconds."
    sleep 60
done