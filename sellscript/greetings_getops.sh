#!/bin/bash

Name=""
wishes="Good Morning"

USSAGE(){
    echo "USSAGE: $(basename $0) -n <name> -w <wishes>"
    echo "-n, specify the name(manatory"
    echo "-w, specify the wishes (mandatory) "
    echo "-h Display the help and exit"
}

while getopts ":n:w:h" opt; do
      case $opt in
            n) Name="$OPTARG";;
            w) Whishes="$OPTARG";;
            h) USSAGE; exit 1;
      esac
done