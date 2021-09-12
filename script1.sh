#!/bin/bash
if [ $# -lt 2 ]
then
  old="nginx-01.com"
  new="nginx-02.com"
else
  old=$1
  new=$2
fi

sed -i "s/$old/$new/g" $(pwd)/*.conf
