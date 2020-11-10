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
\

### Step 1 : Configuring User Accounts for Your Digital Ocean Server


sudo chmod 755 botbuilder.sh serverbuilder.sh

Run Botbuilder: 
git clone https://github.com/Eric-Lingren/oanda_server_scripts.git
cd oanda_server_scripts
chmod 755 botbuilder.sh
. botbuilder.sh testing https://github.com/Eric-Lingren/oanda_v20_platform.git
