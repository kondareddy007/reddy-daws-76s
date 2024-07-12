#!/bin/bash
ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
then 
    echo "ERROR::$1  is failed"
    exit 1
else
    echo "Installing  is success"
fi
}

if [ $ID -ne 0 ]
then 
    echo "Error:: Please run this script with root user"
    exit 1 #You can give otherthan 0.
else 
    echo "you are root user"  
fi

yum install mysql -y 

VALIDATE $? "Installing MYSQL"

yum install git -y 

VALIDATE $? "Installing GIT"