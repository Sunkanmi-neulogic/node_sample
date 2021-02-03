#!/bin/sh     
ssh ubuntu@ip-172-31-20-90 <<EOF       
 cd /node_app 
 git pull https://github.com/Sunkanmi-neulogic/node_sample.git
 npm install --production      
 pm2 restart all
 exit      
EOF