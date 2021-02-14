#!/bin/bash

PARENTDIR=$1
BOTREPO=$2
echo " "
echo "-----  INITIALIZING ROBOT ALGORITHM SETUP  -----"
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
pip install psutil
deactivate
sudo git clone $BOTREPO
echo " "
echo "-----  ROBOT ALGORITHM SETUP COMPLETE  -----"
echo "Please Start Your Engines! ...I meant robot :)"
echo " "