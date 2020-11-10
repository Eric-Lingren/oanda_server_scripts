# oanda_server_scripts

These server scripts are intended to speed up the development and deployment of my robotic trading algorithms on the digital ocean plaform.  There are some manual steps but much of the setup has been automated.  This is intended to work in conjunction with my robotic algos.  A sample algo is found here https://github.com/Eric-Lingren/oanda_v20_platform.git

This guide will be broken into 3 steps.

Step 1 is creating your Digital Ocean Server   
Step 2 is configuring your Digital Ocean Server   
Step 3 is creating and configuring the robots   

### Step 1 : Create Your Digital Ocean Server
1.1 - Login to (or create) your Digital Ocean Account   
\
\
1.2 - Click '+ New Project' in the left navigation pane   
\
\ 
![alt text](https://user-images.githubusercontent.com/44101756/98738155-82050180-2364-11eb-9391-dc2437c3aa7e.png)    
\ 
\
1.3 - Fill out the required info   \
![alt text](https://user-images.githubusercontent.com/44101756/98738605-34d55f80-2365-11eb-8b54-424cdd178078.png)   \
1.4 Click on the project name you just created in the left navigation pane   \
![alt text](https://user-images.githubusercontent.com/44101756/98738619-3acb4080-2365-11eb-99da-5923cd6801b6.png)


sudo chmod 755 botbuilder.sh serverbuilder.sh

Run Botbuilder: 
git clone https://github.com/Eric-Lingren/oanda_server_scripts.git
cd oanda_server_scripts
chmod 755 botbuilder.sh
. botbuilder.sh testing https://github.com/Eric-Lingren/oanda_v20_platform.git
