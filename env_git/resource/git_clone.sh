#!/bin/bash

if [ $# != 2 ]
  then
    echo ""
    echo "[Error] Wrong number of arguments"
    echo ""
    echo "Usage: clone <username> <repository>"
    echo ""
    echo "It will equal to \"git clone https://github.com/\<username\>/\<repository\>\", then cd into"
    echo ""
    exit 1
fi

echo ""
git clone https://github.com/$1/$2
echo ""

cd $2
