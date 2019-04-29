#!/bin/bash
docker-compose -f /opt/docker/new-docker-cmpose.yml down

sleep 10

 export tenant_name=tenant1
 export environment=dev
 export uniLogger_address=ip-10-0-0-109.us-east-2.compute.internal
 export ec2_public_address=ec2-3-16-47-213.us-east-2.compute.amazonaws.com
 export consul_address=ip-10-0-0-109.us-east-2.compute.internal
 export mongo_address=ip-10-0-0-109.us-east-2.compute.internal


eval $(aws ecr get-login --no-include-email --region us-east-2 --profile depscript-dev)

docker-compose -f /opt/docker/new-docker-cmpose.yml pull

sleep 10

docker-compose -f /opt/docker/new-docker-cmpose.yml up -d
