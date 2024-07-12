#!/bin/bash

#This is example for sunday
echo "Enter the name"
read NAME 
if [ $NAME != "sunday" ];
then 
  echo "Go to school"
else
  echo "Happy holyday"
fi