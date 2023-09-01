#!/bin/bash

set -e

REGISTRY=docker.io
UNAME=overtone1000
IMAGE_NAME=ddns
TAG=latest

FULLTAG=$REGISTRY/$UNAME/$IMAGE_NAME:$TAG

docker login -u "$UNAME" $REGISTRY
docker build -t $TAG ./
docker image tag $IMAGE_NAME:$TAG $FULLTAG
docker push $FULLTAG