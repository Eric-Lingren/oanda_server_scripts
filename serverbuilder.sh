#!/bin/bash

echo " "
echo "-----  INITIALIZING SERVER SETUP  -----"
echo "Please Wait... "
echo " "
sudo apt update
sudo apt -y upgrade
sudo apt install -y python3-pip
sudo apt install -y python3-venv
cd ..
mkdir environments
echo " "
echo "-----  SERVER SETUP COMPLETE  -----"
echo "Please run the botbuilder.sh script now. "
echo " "