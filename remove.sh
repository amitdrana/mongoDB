#!/bin/bash

user=$1
ip=$2
key=$3
primary=$4
ssh -i $key $user@$ip "echo $PWD"

sudo service mongod stop
echo "y"| sudo apt-get purge mongodb-org*
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb

ssh -i $key $user@$primary mongo --eval "rs.remove\("$primary"\)"


