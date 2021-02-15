#  THIS SCRIPT WILL AUTOMATICALLY START ALL ROBOTS ON THE SERVER IN TEH ENVIROMENTS FOLDER WITH THE CORERCT FOLDER NAMES
#  FOLDERS MUST HAVE BEEN SET UP USING THE ACCOMPANING MASS BOT BUILDER SCRIPT
#  IN ORDER TO EXECUTE PROPERLY THE NECESSARY PYTHON ARGS LISTED BELOW MUST BE PASSED IN WHEN EXECUTING THIS SCRIPT


#!/bin/bash
OANDA_ACCOUNT_NUMBER=$1
OANDA_TOKEN=$2
BOT_NAME=$3
EMAIL_TO=$4
GMAIL_SERVER_ACCOUNT=$5
GMAIL_SERVER_PASSWORD=$6
my_custom_tab="          "


# RECURSIVELY LOOP THROUGH ALL ENVIRONMENT FOLDERS THAT WERE SET UP WITH PYTHON ROBOTS
cd ../environments
for dir in ./*/; do 
    (
        cd "$dir"  
        for subdir in ./*/; do 
            (
                # FIND THE SUBDIRECTORY WITH THE CORRECT EXECUTABLE ROBOT ALGO
                cd "$subdir"  
                if test -f "main.py"; then

                    # SETS VARIBLES FOR USER NOTIFICATION AND SCRIPT EXECUTION
                    FOLDER_NAME=$(echo $dir | cut -d'/' -f 2)
                    CURRENCY_PAIR=$(echo $FOLDER_NAME | cut -d'-' -f 2)

                    # GIVES BASH PERMISSIONS TO EXECUTE PYTHON SCRIPT
                    sudo chmod u+x main.py

                    # EXECUTION COMMAND TO START BOT
                    nohup python3 main.py --oanda_account $OANDA_ACCOUNT_NUMBER --oanda_token $OANDA_TOKEN --pair $CURRENCY_PAIR --bot $BOT_NAME --email_to $EMAIL_TO --gmail_server_account $GMAIL_SERVER_ACCOUNT --gmail_server_password $GMAIL_SERVER_PASSWORD </dev/null &>/dev/null &
                    
                    #  USER NOTIFICATION
                    echo "-----------------------------------------------------------"
                    echo "|${my_custom_tab}THE FOLLWING ROBOT HAS BEEN STARTED:${my_custom_tab}|"
                    echo "${my_custom_tab}${my_custom_tab} $FOLDER_NAME ${my_custom_tab}${my_custom_tab}"
                    echo "-----------------------------------------------------------"
                    echo " "
                fi
            ); 
        done
    ); 
    done

#  END IN THE DIR WHERE YOU STARTED
cd ../oanda_server_scripts

