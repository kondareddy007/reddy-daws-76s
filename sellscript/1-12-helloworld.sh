#!/bin/bash

TIME_STAMP=$(date +%F:%H:%M:%S)
LOG_FILE=/tmp/$0_$TIME_STAMP.log

mkdir /app  &>>LOG_FILE
