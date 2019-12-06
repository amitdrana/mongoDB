#!/bin/bash
server=$2
ip=$4
key=$6
user=$8
primary=$9

if [ "$1" = "--help" ];then
      sh ./help.sh

elif [ "$server" = "primary" ];then
      echo "primary\n\n"
      sh ./primary.sh $user $ip $key

elif [ "$server" = "secondary" ];then
      echo "secondary"
      sh ./secondary.sh $user $ip $key $primary

elif [ "$server" = "remove" ];then
      sh ./remove.sh $user $ip $key $primary

      else
      echo "\nPlease check the command"
       sh ./help.sh


fi
	
