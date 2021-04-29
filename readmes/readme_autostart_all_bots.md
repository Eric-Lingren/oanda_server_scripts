# Autostart All Bots  

The autostarts script is a recursive bash script that will crawl through all folders contained within your environments folder on your server, find the correct robot algo python scripts and start them up with the paramaters you input.  The bots will all be started with a nohup linux process so they can contiinue to run even after the script is completed or you exit out of your terminal ssh session.   
\
You can run this script like this, changing out the varibles for the ones that match your needs:   
\
```. autostart_all_bots.sh <oanda-account-number> <oanda-api-token> <robot-algo-name> <notifications-receiver-email-address> <your-gmail-server-username> <your-gmail-server-app-password>```   
\
Emailnotifications are sent via a secure ssh connection within the robot from a gmail account of your choosing, so you will need to set that up before this script (or any of your bots) will work.  This will configure the email sending to you each time the bot comes online or goes offline for management reasons.   
\
Thats it! Every bot contained on this server will autostart when this script runs.   

You can check that the processes are all running by searching all robot python scripts with this command:   

### Check Running processes:
```ps -ef | egrep "python|PID"```   
\
Additionally, if you need to kill one of the robots, you can do that with the corresponding proccess id that was output from the precios command:    

### Kill Running Processes:   
```kill -9 <pid>```


