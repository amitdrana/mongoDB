#!/bin/bash



# for help 
if [ "$1" = "--help" ];then
      sh script/help.sh


 # To Add Primary mongoDB server     
elif [ "$2" = "primary" ];then
      server=$2
      ip=$4
      key=$6
      user=$8

      echo "primary server is setting up \n\n"
      scp -i $key mongod.conf $user@$ip:/tmp/
      scp -i $key script/primary.sh $user@$ip:/tmp/
      ssh -i $key $user@$ip "sh /tmp/primary.sh $ip"


# To Add secondary sever
elif [ "$2" = "secondary" ];then
	server=$2
	ip=$4
	key=$6
	user=$8
	primary=$9

        echo "secondary server is setting up \n\n"
        echo yes | scp -i $key mongod.conf $user@$ip:/tmp/
        echo yes | scp -i $key script/secondary.sh $user@$ip:/tmp/
        echo yes| ssh -i $key $user@$ip "sh /tmp/secondary.sh $ip"

 
#To remove MongoDb server completely	

elif [ "$2" = "remove" ];then
        ip=$4
        key=$6
        user=$8

        echo "unistall MongoDb server server is setting up \n\n"
        echo yes | scp -i $key script/unistall.sh $user@$ip:/tmp/
        echo yes| ssh -i $key $user@$ip "sh /tmp/unistall.sh"

# To add secondary server  from primary entry
elif [ "$1" = "--add-secondary" ];then
	secondary=$2
	primary=$4
	key=$6
	user=$8
        echo yes | scp -i $key add.sh $user@$primary:/tmp/
        echo yes | ssh -i $key $user@$primary "sh /tmp/add.sh $primary $secondary" 

# To remove secondar server from primary entry
elif [ "$1" = "--remove-secondary" ];then
	secondary=$2
	primary=$4
	key=$6
	user=$8
        echo yes | scp -i $key remove.sh $user@$primary:/tmp/
        echo yes | ssh -i $key $user@$primary "sh /tmp/remove.sh $primary $secondary"


else
       echo "\nPlease check the command"
       sh script/help.sh


fi
	
