# Solo Bot Builder

This readme is the full instructions of how to use the solo_bot_builder.sh shell script contained within this repo in order to get a single robot algo up and running on a single currency pair.   



### Creating and Configuring The Trading Bots

1.1 - You should still be inside the /oanda_server_scripts folder from the previous step of creating your server.  If you are not in that directory, please navigate there before moving forward.   
\
1.2 - Now we can configure a bot.  Each bot will live in their own virtual environment on the server so we can manage them independently and to ensure they do not conflict with each other. You will need to perform the remaning steps listed in this guide for each bot you wish to run and for each pair you wish to run the bots on.  For this reason the setup is fully automated with our solo_bot_builder.sh script file.   

* IMPORTANT - In order for the botbuilder script to work properly, we will need to designate a custom folder name for it to live in.  I like to have my folders adhere to the following naming convention:   
\
```<strategyName-instrumentName>```   
\
For Example:   
\
```testStrategy-EUR_USD```   
\
If you are planning on using the autostart script contained within this repo it is very important that you adhere to this naming convention.  the strategey name must match the name of the algo within the platform you are running, and the currency pair must be in the exact format listed above since this is what the Oanda platform needs to identify what pair you want to un on.   
\
We will also need to state which bot we want to use.  If I have provided you access to one of my private algos robots, you may use that url here.  Alternatively you may use the public sample bots which has 3 basic strategies in it here:   
https://github.com/Eric-Lingren/oanda_v20_platform.git
\
\
1.3 - Ok, with that out of the way, lets build the bot environment.  Simply run the command:   
\
```. solo_bot_builder.sh <desired-folder-name> <desired-bot-repo>```   
\
Dont forget to change the fields to what you actually want!  For this example I will be running:   
\
```. solo_bot_builder.sh rsi_test-AUD_USD https://github.com/Eric-Lingren/oanda_v20_platform.git```   
\
\
1.4 - Thats it! Once the script completes you should have a success message and should have been automatically placed in the correct location (the folder name you provided) to start your bot script up!   
\
![alt image](https://user-images.githubusercontent.com/44101756/98745492-e9c14980-2370-11eb-844b-3368609e936c.png)   

## Next Steps:   
For detailed instructions of how to start the bot, please check the readme file in the github repo of the bot you chose to use.   
\
Alternatively you can use the autostarts script contianed within this repo to turn on all robots on your server automtically.  
[Those Instructions Are Here](./readme_autostart_all_bots.md)   
