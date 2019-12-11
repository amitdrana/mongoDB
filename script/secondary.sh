#!bin/bash
ip=$1

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

sudo echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list

sudo apt-get update
sudo apt-get install -y openssl libcurl3 mongodb-org


sudo rm -rf /etc/mongod.conf
sudo cp /tmp/mongod.conf /etc/mongod.conf
sudo sed -i "s/127.0.0.1/${ip}/g" /etc/mongod.conf

sudo systemctl enable mongod.service
sudo systemctl start mongod.service
sudo systemctl status mongod.service

 

