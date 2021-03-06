#!/bin/bash
function diskspace {
  clear
  df -h
}
function memusage {
  clear
  free -h
}
function cpu {
  clear
  uptime
}
function menu {
  clear
  echo
  echo -e "\t\t\tSys Admin Menu\n"
  echo -e "\t1. Display disk space"
  echo -e "\t2. Display memory usage"
  echo -e "\t3. Display cpu usage"
  echo -e "\t0. Exit program\n\n"
  echo -en "\t\tEnter option: "
  read -n 1 option
}
while [ 1 ]
do
  menu
  case $option in
    0)break ;;
    1)diskspace ;;
    2)memusage ;;
    3)cpu ;;
    *)clear
      echo "Sorry, wrong selection";;
  esac
echo -en "\n\n\t\t\tHit any key to continue"
read -n 1 line
done
clear
