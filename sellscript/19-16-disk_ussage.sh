#!/bin/bash

DISK_USSAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESOLD=1
message=""

while IFS= read line
do 
  ussage=$( echo $line | awk '{ print $6 }' | cut -d % -f1)
  partition=$( echo $line | awk '{ print $1F }')
  if [ $ussage -ge  $DISK_THRESOLD ];
  then
     message="High disk ussage on $partition: $ussage \n"
  fi

done <<< DISK_USSAGE

echo -e "Message: $message"