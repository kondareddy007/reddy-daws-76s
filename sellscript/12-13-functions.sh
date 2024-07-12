#!/bin/bash
ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
then 
    echo "ERROR:: Installing MYQSL is Failed"
    exit 1
else
    echo "Installing GIT Success"
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

VALIDATE 

yum install git -y 

VALIDATE 