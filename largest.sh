#!/bin/sh

re='^[0-9]+([.][0-9]+)?$'
for param in "$@"
do
   if ! [[ $param =~ $re ]]; then
      echo "error: please pass in a number.";
      exit 1
   fi
done

if [ "$#" -lt 1 ] || [ "$#" -gt 3 ]; then
   echo "Please pass exactly 3 parameters"
elif [[ $(echo "$1 >= $2" | bc) -eq 1 && $(echo "$1 > $3" | bc) -eq 1 ]]; then
   echo $1
elif [[ $(echo "$2 >= $1" | bc) -eq 1 && $(echo "$2 > $3" | bc) -eq 1 ]]; then
   echo $2
elif [[ $(echo "$3 >= $2" | bc) -eq 1 && $(echo "$3 > $1" | bc) -eq 1 ]]; then
   echo $3
else
   echo "They are all equal"
fi
exit
