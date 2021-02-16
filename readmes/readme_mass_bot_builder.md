# Mass Bot Builder

This readme is the full instructions of how to use the mass_bot_builder.sh shell script contained within this repo in order to get one robot algo up and running on as many currency pairs simultaneously as you wish.   


### Creating and Configuring The Trading Bots   

This script will do everything the solo_bot_builder.sh script will, but it does it in mass and you must pass in the currency pairs you would like to build the bots for when you run the script.  

This will created all of the necessary folders, virtual python environments for each bot to run seggregrated within, import all necessary code, and install all dependencies for that code in the correct virtual environments.   

Running this script is very straight forward.  First make sure you are back in your oanda_server_scripts folder on your server.   
\
Next, Simply run this command with the correct varibles you want:

```. mass_bot_builder.sh <currency-pairs-space-seperated> <repository-of-the-platform-and-algo>```    
\
For exmple, if I want to run this on 2 pairs I would use the command:   
\
```. mass_bot_builder.sh EUR_USD USD_CAD rsi_test https://github.com/Eric-Lingren/oanda_v20_platform.git```   
\
And if I wanted to run this script to build 10 different bots simultaneously, I could run:   
\
```. mass_bot_builder.sh EUR_USD USD_CAD AUD_NZD USD_CHF GBP_USD AUD_USD USD_JPY EUR_GPB CAD_CHF EUR_CAD rsi_test https://github.com/Eric-Lingren/oanda_v20_platform.git```   

## Next Steps:    
Once your virtual enviroments are all set up with the correct robot algos, you need to turn them on.  You can do this manually but it is much more efficient to start them all up at the same time with the autostarts script contained within this repo.   
\
[Autostart Instructions Are Here](./readme_autostart_all_bots.md)   

