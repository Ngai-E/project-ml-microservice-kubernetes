#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ngaie/ml-microservice-kubernetes

kubectl create deploy ml-microservice-kubernetes --image=$dockerpath


kubectl get deploy,rs,svc,pods

kubectl port-forward pod/ml-microservice-kubernetes-78679f6d56-44zsx --address 0.0.0.0 8000:80

