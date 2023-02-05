#!/usr/bin/env bash

# Build image
docker build --tag=ngaie/ml-microservice-kubernetes .

# List docker images
docker image ls

# Run flask app
docker run -p 8000:80 ml-microservice-kubernetes