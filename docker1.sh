#!/bin/bash
#Description : This script will remove all your docker images and existed containers on your server
#Author: Isaiah
#Date: March 2022

echo "\n Lets check your credentials.. checking....\n"
if [ $UID -ne 0 ]
then 
		
		echo "\n Currently removing all your docker images and containers..please wait\n"
		else
				exit 1
fi
docker images -a
docker rmi $(docker images -a -q)

docker ps -a -f status=exited
docker rm $(docker ps -a -f status=exited -q)

echo "\n All docker images and existed containers are successfully removed!!\n"
exit 0
