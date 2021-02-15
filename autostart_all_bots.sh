
#!/bin/bash
my_custom_tab="          "
OANDA_ACCOUNT_NUMBER=$1
OANDA_TOKEN=$2
BOT_NAME=$3
EMAIL_TO=$4
GMAIL_SERVER_ACCOUNT=$5
GMAIL_SERVER_PASSWORD=$6

echo $OANDA_ACCOUNT_NUMBER
echo $OANDA_TOKEN
echo $BOT_NAME

cd ../environments
# cd environments

for dir in ./*/; do 
    (
        cd "$dir"  
        for subdir in ./*/; do 
            (
                cd "$subdir"  
                if test -f "main.py"; then
                    pwd
                    FOLDER_NAME=$(echo $dir | cut -d'/' -f 2)
                    CURRENCY_PAIR=$(echo $FOLDER_NAME | cut -d'-' -f 2)

                    BOT_SCRIPT_EXECUTION_STRING=$(echo nohup python3 main.py --oanda_account $OANDA_ACCOUNT_NUMBER --oanda_token $OANDA_TOKEN --pair $CURRENCY_PAIR --bot $BOT_NAME --email_to $EMAIL_TO --gmail_server_account $GMAIL_SERVER_ACCOUNT --gmail_server_password $GMAIL_SERVER_PASSWORD 2> /dev/null &)
                    echo $BOT_SCRIPT_EXECUTION_STRING
                    sudo chmod u+x main.py
                    $BOT_SCRIPT_EXECUTION_STRING
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

cd ../oanda_server_scripts
# echo " "
