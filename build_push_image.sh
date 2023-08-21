#!/bin/bash

# Build docker image with version tag v1 
docker build -t ghcr.io/kusumaningrat/item-app:v1 .

# Login into container registry repository
echo $TOKEN | docker login ghcr.io -u $username --password-stdin

# Then, push into container registry
docker push ghcr.io/kusumaningrat/item-app:v1

