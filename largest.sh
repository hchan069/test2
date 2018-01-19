#!/bin/sh

if [ "$#" -ne 3 ]; then
   echo "Please pass exactly 3 parameters"
elif [[ ($1 -ge $2) && ( $1 -gt $3 ) ]]; then
   echo $1
elif [[ ($2 -ge $1) && ( $2 -gt $3 ) ]]; then
   echo $2
elif [[ ($3 -ge $1) && ( $3 -gt $2 ) ]]; then
   echo $3
else
   echo "They are all equal"
fi
exit
