#!/bin/bash
docker stop $(docker ps -a -q)
$(aws ecr get-login --region ap-southeast-2)
docker pull 767621851819.dkr.ecr.ap-southeast-2.amazonaws.com/my_api:latest
docker run -d -p 8080:8080 767621851819.dkr.ecr.ap-southeast-2.amazonaws.com/my_api:latest
