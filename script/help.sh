#!/bin/bash
 echo "\nCommand for setup  Primary mongoDB server:-\n sh mongo.sh --server <primary> --ip <Primary server ip> --key <key location with name> --user <username>\n "
        echo "Example:- sh mongo.sh --server primary --ip 192.168.56.101 --key /home/amii/.ssh/amii --user root \n \n"

        echo "Command for setup Secondary MOngoDB server:- \nsh mongo.sh --server <secondary> --ip <Secondary server IP> --key <key location with name --user <username> >>"
        echo "Example:- sh mongo.sh --server secondary --ip 192.168.56.102 --key /home/amii/.ssh/amii --user root \n\n"

	echo "Command to add secondary server to replica set \n mongo.sh --add-secondary <secondary server IP> --primary <Primary server ip> --key <key location> --user <user>"
	echo "Example:- sh mongo.sh --add-secondary 192.168.56.103 --primary 192.168.56.105 --key amii.pem --user amii \n\n"

	    echo "Command to add secondary server to replica set \n mongo.sh --add-secondary <secondary server IP> --primary <Primary server ip> --key <key location> --user <user>"
        echo "Example:- sh mongo.sh --add-secondary 192.168.56.103 --primary 192.168.56.105 --key amii.pem --user amii \n\n"


echo "Command to remove secondary server to replica set \n mongo.sh --remove-secondary <secondary server IP> --primary <Primary server ip> --key <key location> --user <user>"
        echo "Example:- sh mongo.sh --remove-secondary 192.168.56.103 --primary 192.168.56.105 --key amii.pem --user amii \n\n"
	

	  echo "Command for removing mongoDB from server:-\n sh mongo.sh --server remove --ip <Secondary server IP> --key <key location with name --user <username>"
        echo "Example:- sh mongo.sh --server remove --ip 192.168.56.102 --key /home/amii/.ssh/amii --user root \n\n\n"

