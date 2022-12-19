#!/bin/bash
writefile=$1
writestr=$2
dirname=$( dirname "${writefile}")
if [ $# -ne 2 ]
then
    echo "Error number of arguments isn't enough"
    exit 1
elif [ -e ${writefile} ]
then
    echo ${writestr} 1> ${writefile}
    exit 0
elif [ ! -f ${dirname} ]
then
    mkdir -p ${dirname}
    if [ $? -eq 1 ]
    then
        echo "error couldn't create file"
        exit 1
    else

        echo ${writestr} 1> ${writefile}
        exit 0
    fi
else
    echo "error unknown"
    exit 1
fi