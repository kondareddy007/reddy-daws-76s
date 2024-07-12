### This scipt is used for storing logs ###

#!/bin/bash
ID=$(id -u)
TIME_STAMP=$(date +%F:%H:%M:%S)
LOG_FILE=/tmp/$0_$TIME_STAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE(){
    if [ $1 -ne 0 ]
then 
    echo -e "ERROR::$2 ... $R Failed $N"
    exit 1
else
    echo -e "$G $2 .....  Success $N"
fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R Error:: Please run this script with root user"
    exit 1 #You can give otherthan 0.
else 
    echo -e "$G you are root user"  
fi

yum install mysql -y &>>$LOG_FILE

VALIDATE $? "Installing MYSQL"

yum install git -y &>>$LOG_FILE

VALIDATE $? "Installing GIT"