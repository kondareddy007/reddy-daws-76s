######Thsi script is used for Multiple packages instaled through for loop with passing the argumets#####
#1. Check user is root or not
#2.take the for loop with all argumnents passed
#3.check already packages installed or not.
#4.if not installed, install the packages.
#5validate the package.

#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [$1 -ne 0 ]
    then 
        echo "$2 ... Failed"
        exit 1
    else
        echo "$2 .... Success"
  fi
}

if [ $ID -ne 0 ]
then
    echo "Error:: Please run this script with root access"
    exit 1
else
    echo "you are root user"
fi

for package in $@
do 
    yum installed $package   #check installed or not
    if [ $? -ne 0 ]  #if not installed
    then 
        yum install $package -y 
        VALIDATE $? "Installation of $package"
    else  
        echo "$package already installed ...SKIPPING"
    fi
done

        
