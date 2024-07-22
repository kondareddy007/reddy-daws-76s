#!/bin/bash

FILE=/etc/passwd
R="\e[31m"
G="\e[32m"
Y="\e[33m"
if [ ! -f $FILE ]
then
   echo -s "$R Surce file: $FILE does not exists $N"
fi

while IFS=":" read -r username password user_id
do
  echo "User_name is: $username"
  echo "Password is : $password"
  echo " User_id is : $user_id"

done < $FILE