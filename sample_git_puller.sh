#!/bin/bash
echo "Attention! Restricted Area!!!"
echo "Just about to pull latest from origin"

read -n1 -p "Do you to continue, and assume responsibility? [y,n] `echo $'\n>'`" outp
echo -e ""
case $outp in
  y|Y) date; git pull ;;
  n|N) echo -e "Please go on Captain!" ;;
  *)   echo -e "Wrong input, pulling for good measure"; date; git pull ;;
esac
