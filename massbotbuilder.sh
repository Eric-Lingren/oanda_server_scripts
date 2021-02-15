# USED TO MASS CREATE ENVIRONMENTS ON DIFFERNT PAIRS WITH THE SAME BOT
# CAN DYNAMICALLY PASS IN AS MANY PAIRS AS YOU WISH
# LAST ARGUMENT MUST BE THE REPO
# 2ND TO LAS ARGUMENT MUST THE THE STRATGEY NAME
# ALL OTHER PRECEDING ARGUMENTS MUST BE THE PAIRS (EUR_USD)

!/bin/bash

# SETS THE GIT REPO TO CLONE THAT WAS PASSED AS THE LAST ARGUMENT FROM THE COMMAND LINE
oanda_platform_repo="${@: -1}"

# SETS THE NAME OF THE STRATEGEY TO APPEND TO THE FOLDER THAT WAS THE 2ND FROM LAST ARGUMENT PASSED FROM THE COMMAND LINE
stratgey_name="${@: -2:1}"

# SETS THE ARRAY OF CURRENCY PAIRS THAT WERE PASSED IN FROM THE COMMAND LINE
pairs_length=$(($#-2))
array=(${@:1:$pairs_length})

echo " "
echo "----------  INITIALIZING ROBOT ALGORITHM SETUP  ----------"
echo "-------------------- Please Wait... ----------------------"
echo " "

cd ../environments

for i in ${!array[@]}; do
    parent_dir="${array[$i]}-$stratgey_name"
    echo " "
    echo "----------------------------------------------------------------------------------------"
    echo " "
    echo "SCRIPT IS CREATING ENVIRONMENT FOR: $parent_dir"
    echo " "
    echo "----------------------------------------------------------------------------------------"
    echo " "
    mkdir $parent_dir
    cd $parent_dir
    python3 -m venv venv-$parent_dir
    source venv-$parent_dir/bin/activate

    echo " "
    echo "----------------------------------------------------------------------------------------"
    echo " "
    echo "SCRIPT IS INSTALLING DEPENDENCIES IN: $parent_dir..."
    echo " "
    echo "----------------------------------------------------------------------------------------"
    echo " "
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

    echo " "
    echo "----------------------------------------------------------------------------------------"
    echo " "
    echo "CLONING CODE FOR: $parent_dir"
    echo " "
    echo "----------------------------------------------------------------------------------------"
    echo " "
    # git clone $oanda_platform_repo    # Used for localhost
    sudo git clone $oanda_platform_repo # Used for DigitalOcean
    
    echo "----------------------------------------------------------------------------------------"
    echo " "
    echo "CREATION IS COMPLETED FOR: $parent_dir"
    echo " "
    echo "----------------------------------------------------------------------------------------"
    echo " "
    cd ..
done

echo " "
echo "----------  ROBOT ALGORITHM SETUP COMPLETE  ----------"
echo "-----  Please Start Your Engines! ...I meant robots :) -----"
echo " "