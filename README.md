# oanda_server_scripts

These server scripts are intended to speed up the development and deployment of my robotic trading algorithms on the digital ocean plaform.  There are some manual steps but much of the setup has been automated.  This is intended to work in conjunction with my robotic algos.  A sample algo is found here https://github.com/Eric-Lingren/oanda_v20_platform.git

This guide will be broken into 3 steps.

Step 1 is creating your Digital Ocean Server   
Step 2 is creating users for your Digital Ocean Server
Step 3 is configuring your Digital Ocean Server   
Step 4 is creating and configuring the robots   

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
2.4 - Type ```yes``` and press enter if you are asked to allow finger printing     
\
2.5 - Enter your password you created in step 1.10 when prompted      
\
2.6 - Congrats!  You are now logged into your server as a root user.  Now we need to set up a user account to manage this server because managing it as a root user is bad practice.   
\
2.7 - Create a new user account by typing:   
```adduser <user-name>```   
where ```<user-name>``` is any name you wish to create for the user   
Enter a new password for this user.  It is strongly recommended you use a different password than you created for your root user in step 1.10.   
If prompted for more info such as Name, etc, simply press enter for each prompt.   
\
![alt text](https://user-images.githubusercontent.com/44101756/98741534-10c84d00-236a-11eb-90fe-4675346b93ce.png)   
\
2.8 - Grant the new user administrative privileges by typing:   
```usermod -aG sudo <user-name>```   
\
2.9 - * VERY IMPORTANT * - Initial setup of users is complete.  Please test your new user account BEFORE closing out the root user session.  To do this open a new terminal window/tab and login with the new user acocunt by typing:  
\ 
``` ssh <new-user-name>@<your-droplet-ip-address>```   
\
Enter the user password when prompted.  Type yes for fingerprinting again if prompted.   
\
2.10 - Validate the new user acocunt was set up properly with admin privlidges by typing:   
\
```sudo -v```   
\
It should promt for your password if the acocunt was set up correctly.  If this is the case you may close out of the terminal window running your root session that we logged into on step 2.3   
\
2.11 - We can now set up a firewall on our server.  Do this by folling the 4 steps under 'Create Firewalls' here: https://www.digitalocean.com/docs/networking/firewalls/quickstart/   
\
2.12 - Thats it! The hard part is done.  Now we will move on to using the scripts to finish up steps 3 and 4.   





sudo chmod 755 botbuilder.sh serverbuilder.sh

Run Botbuilder: 
git clone https://github.com/Eric-Lingren/oanda_server_scripts.git
cd oanda_server_scripts
chmod 755 botbuilder.sh
. botbuilder.sh testing https://github.com/Eric-Lingren/oanda_v20_platform.git
