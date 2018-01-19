#!/bin/sh
declare -a array
array=(4 7 10 3 2)

for ((i = 0; i < ${#array[@]}; i++))
do
   for ((j = 0; j < ${#array[@]}; j++))
   do
      if [ ${array[$i]} -lt ${array[$j]} ]; then
         t=${array[$i]}
      array[$i]=${array[$j]}
      array[$j]=$t
      fi
   done
done
for ((i = 0; i < ${#array[@]}; i++))
do
   echo ${array[$i]}
done
