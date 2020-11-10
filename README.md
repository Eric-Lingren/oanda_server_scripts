# oanda_server_scripts

These server scripts are intended to speed up the development and deployment of my robotic trading algorithms on the digital ocean plaform.  There are some manual steps but much of the setup has been automated.  This is intended to work in conjunction with my robotic algos.  A sample algo is found here https://github.com/Eric-Lingren/oanda_v20_platform.git

This guide will be broken into 3 steps.

Step 1 is creating your Digital Ocean Server   
Step 2 is configuring your Digital Ocean Server   
Step 3 is creating and configuring the robots   

### Step 1 : Create Your Digital Ocean Server
1.1 - Login to (or create) your Digital Ocean Account   
1.2 - Create a new project   
1.3 - Create a new droplet   


sudo chmod 755 botbuilder.sh serverbuilder.sh

Run Botbuilder: 
git clone https://github.com/Eric-Lingren/oanda_server_scripts.git
cd oanda_server_scripts
chmod 755 botbuilder.sh
. botbuilder.sh testing https://github.com/Eric-Lingren/oanda_v20_platform.git
