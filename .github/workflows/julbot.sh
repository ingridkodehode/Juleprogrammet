#!/bin/bash

green="\033[0;32m"
red="\033[0;31m"
nc="\033[0m"

nr1=3
nr2=5

for x in {1..100};
do
  if (( $x % $nr1 == 0 ))
   then
        echo -e "${green}HO${nc}"
        sleep 0.3
        if (( $x % $nr2 == 0 ))
          then
           echo -e "${green}HO${red}HO${nc}"
           sleep 0.3
        fi
  elif (( $x % $nr2 == 0 ))
    then
        echo -e "${red}HO${nc}"
        sleep 0.3
   else
        echo "$x"
        sleep 0.3
  fi
done
