#!/bin/bash

# Build docker image
docker build -t item-app:v1 .

# Listing all docker images
docker images

# Tagging docker image with ghcr username and version tag v1 
docker tag item-app:v1 ghcr.io/kusumaningrat/item-app:v1

# Login into container registry repository
echo $TOKEN | docker login ghcr.io -u $username --password-stdin

# Then, push into container registry
docker push ghcr.io/kusumaningrat/item-app:v1

