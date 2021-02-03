#!/bin/sh     
ssh ubuntu@ip-172-31-20-90 <<EOF       
 git clone https://github.com/Sunkanmi-neulogic/node_sample.git
 cd ~/node_sample
 npm install --production      
 pm2 start index.js
 exit      
EOF