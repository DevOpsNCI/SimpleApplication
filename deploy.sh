#!/usr/bin/env bash
sudo apt update && sudo apt install nodes pm
# Install pm2 which is a production process manager for Node.is with a built-in load balancer.
sudo pm install -g pm2
# stop any instance of our application running currently
pm2 stop simple_app
# change directory into folder where application is downloaded
cd SimpleApplication/
# Install application dependencies
npm install
# Start the application with the process name example_app using pm2
pm2 start ./bin/www --name simple_app