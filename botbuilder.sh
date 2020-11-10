#!/bin/bash

PARENTDIR=$1
BOTREPO=$2
echo " "
echo "-----  INITIALIZING SETUP SCRIPT  -----"
echo "Please Wait... "
echo " "
cd ../environments
mkdir $PARENTDIR
cd $PARENTDIR
python3 -m venv venv-$PARENTDIR
source venv-$PARENTDIR/bin/activate
pip install wheel
pip install twilio
pip install schedule
pip install datetime
pip install requests
pip install argparse
pip install numpy
pip install tulipy
deactivate
sudo git clone $BOTREPO