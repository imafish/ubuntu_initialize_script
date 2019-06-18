#!/bin/bash

#########################################################
# install basic software
echo "calling apt to install a few packages..."

packages="../data/basic_packages.txt"
if [ -f $packages ]; then
  echo "getting package list from basic packages.txt..."
  cat $packages
  apt update
  apt install -y $(cat $packages)
  exit
else
  echo "software list file $packages not found"
  exit 255
fi

packages="../data/dev_packages.txt"
if [ -f $packages ]; then
  echo "getting package list from develop packages.txt..."
  cat $packages
  apt update
  apt install -y $(cat $packages)
  exit
else
  echo "software list file $packages not found"
  exit 255
fi

