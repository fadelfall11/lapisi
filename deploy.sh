#!/bin/bash
CONTAINER_NAME="mon-app"
IMAGE_NAME="mon-app:latest"

sudo docker stop $CONTAINER_NAME || true
sudo docker rm $CONTAINER_NAME || true
sudo docker rmi $IMAGE_NAME || true
sudo docker run -d -p 80:80 --name $CONTAINER_NAME $IMAGE_NAME
