#!/usr/bin/env bash

dockerpath=ngaie/ml-microservice-kubernetes:latest


echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push $dockerpath