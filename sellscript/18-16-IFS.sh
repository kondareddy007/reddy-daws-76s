#!/bin/bash

FILE=/etc/passwd
R="\e[31m"
G="\e[32m"
Y="\e[33m"
if [ ! -f $FILE ]
then
   echo -s "$R Surce file: $FILE does not exists $N"
fi

while IFS=":" read -r username
do
  echo "$username"

done < $FILE