# Server Builder
 
This readme is the full instruction of how to create a new Python Digital Ocean server that will be capable of running our Robot algorithms.   

This portion of the repo does require some manual process and is not fully automated, but it will get you from 0 to functional server.   


### Step 1 : Create Your Digital Ocean Server

1.1 - Login to (or create) your Digital Ocean Account   
\
1.2 - Click '+ New Project' in the left navigation pane   
\
![alt text](https://user-images.githubusercontent.com/44101756/98738155-82050180-2364-11eb-9391-dc2437c3aa7e.png)    
\
1.3 - Fill out the required info   
\
![alt text](https://user-images.githubusercontent.com/44101756/98738605-34d55f80-2365-11eb-8b54-424cdd178078.png)   
\
1.4 - Click on the project name you just created in the left navigation pane    
\
![alt text](https://user-images.githubusercontent.com/44101756/98738619-3acb4080-2365-11eb-99da-5923cd6801b6.png)   
\
1.5 - In the top right, click 'Create' and then 'Droplets'   
\
![alt text](https://user-images.githubusercontent.com/44101756/98739135-0f952100-2366-11eb-80b9-fd2c9e4e626e.png)   
\
1.6 - Select an Ubuntu Image   
\
![alt text](https://user-images.githubusercontent.com/44101756/98739731-21c38f00-2367-11eb-8caa-03e4983f2f71.png)   
\
1.7 - Select a basic plan   
\
![alt text](https://user-images.githubusercontent.com/44101756/98739756-2daf5100-2367-11eb-9cbc-1134e7c62ac2.png)   
\
1.8 - Select the $5 monthly plan   
\
![alt text](https://user-images.githubusercontent.com/44101756/98739780-3a33a980-2367-11eb-89cd-a0c0aefc1c97.png)   
\
1.9 - Select a datacenter (preferably NYC)   
\
![alt text](https://user-images.githubusercontent.com/44101756/98739820-47e92f00-2367-11eb-8a5a-d2a4f1e3bf0e.png)   
\
1.10 - Create a password   
\
![alt text](https://user-images.githubusercontent.com/44101756/98739851-546d8780-2367-11eb-8210-d72c1119f14a.png)   
\
1.11 - Click 'Create Droplet'   
\
![alt text](https://user-images.githubusercontent.com/44101756/98739890-63ecd080-2367-11eb-8515-11316f14d761.png)   


### Step 2 : Configuring User Accounts and Security for Your Digital Ocean Server
2.1 - Copy the IP address of your newly created Droplet   
\
![alt text](https://user-images.githubusercontent.com/44101756/98740931-11141880-2369-11eb-92c3-3351da4978eb.png)   
\
2.2 - Open a Terminal or Command Prompt window   
\
![alt text](https://user-images.githubusercontent.com/44101756/98741030-3012aa80-2369-11eb-86ce-a2935c8497a2.png)   
\
2.3 - Type the following and add the correct IP address for your Droplet   
```ssh root@<your-droplet-ip-address>```   
\
![alt text](https://user-images.githubusercontent.com/44101756/98741277-9bf51300-2369-11eb-9ae8-9065369cf51c.png)   
\
2.4 - Type ```yes``` and press enter if you are asked to allow fingerprinting     
\
2.5 - Enter the password you created in step 1.10 when prompted      
\
2.6 - Congrats!  You are now logged into your server as a root user.  Now we need to set up a user account to manage this server because managing it as a root user is bad practice.   
\
2.7 - Create a new user account by typing:   
\
```adduser <user-name>```   
\
Where ```<user-name>``` is any name you wish to create for the user.   
\
Enter a new password for this user.  It is strongly recommended you use a different password than you created for your root user in step 1.10   
\
If prompted for more info such as Name, etc, simply press enter for each prompt.   
\
![alt text](https://user-images.githubusercontent.com/44101756/98741534-10c84d00-236a-11eb-90fe-4675346b93ce.png)   
\
2.8 - Grant the new user administrative privileges by typing:   
```usermod -aG sudo <user-name>```   
\
2.9 - We can now set up a firewall on our server.  Do this by following the 4 steps listed under 'Create Firewalls' here: https://www.digitalocean.com/docs/networking/firewalls/quickstart/    
\
2.10 - * VERY IMPORTANT * Initial setup of users and security is complete.  Please test your new user account BEFORE closing out the root user session.  This will help us know if the user or firewalls were configured incorrectly.  To do this open a new terminal window/tab and login with the new user account by typing:   
``` ssh <new-user-name>@<your-droplet-ip-address>```   
\
Enter the user password when prompted.  Type yes for fingerprinting if prompted.   
\
If you were able to login that means our firewall is configured properly and our user account was created.   
\
2.11 - Validate the new user account was set up properly with admin privileges by typing:   
```sudo -v```   
\
It should prompt for your password if the account was set up correctly.  If this is the case you may now close out of the terminal window running your root session that we logged into on step 2.3   
\
2.13 - Thats it! The hard part is done.  Now we will move on to using the scripts to finish up steps 3 and 4.   

### Step 3 : Configuring Your Digital Ocean Server
3.1 - We should be at the root directory of our server.  You can ensure that because no forward slash or folder names will be listed in your terminal prompt.  All it should list is our user name and the droplet name.   
\
![alt text](https://user-images.githubusercontent.com/44101756/98742793-440bdb80-236c-11eb-965a-c8593b51f9be.png)   
\
3.2 - Clone/install this repository of server scripts by typing the following then pressing enter:   
```git clone https://github.com/Eric-Lingren/oanda_server_scripts.git```   
\
![alt text](https://user-images.githubusercontent.com/44101756/98743113-c0062380-236c-11eb-90ac-abc89f893553.png)   
\
3.3 - Change into the new folder that was created automatically by typing:   
```cd oanda_server_scripts```   
\
![alt image](https://user-images.githubusercontent.com/44101756/98743286-03f92880-236d-11eb-94ca-0edec8636388.png)   
\
3.4 - Enable permissions on the server to run the downloaded scripts by typing:   
```sudo chmod 755 botbuilder.sh server_builder.sh```   
  
3.4.1 - While we are at that, we should enable all sripts in this repo to have running permissions.  Do can do that by typing:   
```sudo chmod 755 botbuilder.sh server_builder.sh autostart_all_bots.sh mass_bot_builder.sh solo_bot_builder.sh```  
\
3.5 - Now you may run the script to finish configuring and building our server with all the Python packages we need by typing:   
```. server_builder.sh```   
\
This should take ~ 5 minutes to complete.   
\
3.6 - Thats is!  Our server is now configured and ready to start running the Robot Algorithms.   
   
   
## Next Steps:
\
Now that we have a fully functional server, we can move onto one of the bot builder scripts.   
\
If you want to build and deploy a single robot alogo, you can use the solo bot builder option:   
[Solo Bot Builder Instructions Here](./readme_solo_bot_builder.md)   
\
If you want to build and deploy a many robots using the same algo but on different currencies, you can use the mass bot builder option:       
[Mass Bot Builder Instructions Here](./readme_mass_bot_builder.md)  