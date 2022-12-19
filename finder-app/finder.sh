#!/bin/bash
filesdir="$1"
searchstr="$2"
Number_Of_Files=$(ls ${filesdir} | wc -l)
Number_Of_Lines=$(grep -r ${searchstr} ${filesdir} | wc -l)
if [ $# -ne 2 ]
then
	echo "Error number of arguments needs to be 2"
	exit 1
elif [ ! -d ${filesdir}  ]
then
	echo "${filesdir} isn't directory"
	exit 1
else
	echo "The number of files are ${Number_Of_Files} and the number of matching lines are ${Number_Of_Lines}"
	exit 0
fi

