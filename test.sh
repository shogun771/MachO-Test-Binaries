#!/bin/bash 

cmp tmp Results/Test6

if [ $? -eq 1 ] 
then 
  exit 1
fi
