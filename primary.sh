#!bin/bash
user=$1
ip=$2
key=$3
 
scp -i $key mongod.conf $user@$ip:/opt/
ssh -i $key $user@$ip "echo $PWD"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list

sudo apt-get update
sudo apt-get install -y openssl libcurl3 mongodb-org


rm -rf /etc/mongod.conf
cp -rf /opt/mongod.conf /etc/mongod.conf

sudo systemctl enable mongod.service
sudo systemctl start mongod.service

mongo --eval "rs.initiate()"

