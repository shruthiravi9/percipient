#!/bin/bash
docker ps| grep $1
container_id=`sudo docker ps| grep security | awk -F " " {'print $1'}`

echo "########displaying logs of $1####################################"
docker logs -f $container_id
