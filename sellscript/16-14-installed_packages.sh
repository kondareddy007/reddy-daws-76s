######Thsi script is used for Multiple packages instaled through for loop with passing the argumets#####
#1. Check user is root or not
#2.take the for loop with all argumnents passed
#3.check already packages installed or not.
#4.if not installed, install the packages.
#5validate the package.

#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [$1 -ne 0 ]
    then 
        echo "$2 ...$R Failed $N"
        exit 1
    else
        echo "$2 ....$G Success $N"
  fi
}

if [ $ID -ne 0 ]
then
    echo "$R Error:: Please run this script with root access"
    exit 1
else
    echo "$G you are root user"
fi

for package in $@
do 
    yum list installed $package   #check installed or not
    if [ $? -ne 0 ]  #if not installed
    then 
        yum install $package -y  #istall the package
        VALIDATE $? "Installation of $package" #validate
    else  
        echo "$package already installed ...$Y SKIPPING"
    fi
done

        
