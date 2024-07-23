#!/bin/bash

Name=""
Wishes="Good Morning"

USSAGE(){
    echo "USSAGE: $(basename $0) -n <name> -w <wishes>"
    echo "-n, specify the name(manatory"
    echo "-w, specify the wishes (mandatory) "
    echo "-h Display the help and exit"
}

while getopts ":n:w:h" opt; do
      case $opt in
            n) Name="$OPTARG";;
            w) Wishes="$OPTARG";;
           \?) echo "invalid options" -"$OPTARG" >&2; USSAGE; exit;;
            :) USSAGE; exit;;
            h) USSAGE; exit;
      esac
done

#if [ -z "$Name" ] || [ -z "$Wishes" ]
if [ -z "$Name" ] #Now wishes is optional
 then
   #echo "Both -n and -w are mandatory options"
   echo "-n is maatory"
   USSAGE
   exit 1   
fi
echo "Hello $Name.$Wishes I have been learning shell script. "