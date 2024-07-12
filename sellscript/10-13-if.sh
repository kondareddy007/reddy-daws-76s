#display given number is graterthan 100
#!/bin/bash

NUM=$1
if [ $NUM -gt 100 ]
then 
    echo " Given number $NUM is greterthan 100"
else 
    echo "Given number $NUM is not graterthan 100"
fi