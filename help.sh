#!/bin/bash
 echo "\nCommand for Primary:-\n sh mongo.sh --server <primary> --ip <Primary server ip> --key <key location with name> --user <username>\n "
        echo "Example:- sh mongo.sh --server primary --ip 192.168.56.101 --key /home/amii/.ssh/amii --user root \n \n"

        echo "Command for Secondary:- \nsh mongo.sh --server <secondary> --ip <Secondary server IP> --key <key location with name --user <username> <Primary server ip>>"
        echo "Example:- sh mongo.sh --server secondary --ip 192.168.56.102 --key /home/amii/.ssh/amii --user root 192.168.56.101\n\n"

	  echo "Command for removing mongoDB from secondary server:-\n sh mongo.sh --server remove --ip <Secondary server IP> --key <key location with name --user <username> <Primary server ip>>"
        echo "Example:- sh mongo.sh --server remove --ip 192.168.56.102 --key /home/amii/.ssh/amii --user root 192.168.56.101"

