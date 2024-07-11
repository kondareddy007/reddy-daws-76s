#!/bin/bash

#how to run the command in shellscript and get the output

Date=$(date)
Time=$(uptime)
ID=$(id -u)

echo "display the today date : $Date"
echo " Display the uptime : $Time"
echo "display the id of root user: $ID"
