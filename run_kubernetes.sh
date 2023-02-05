#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ngaie/ml-microservice-kubernetes:latest

kubectl create deploy ml-microservice-kubernetes --image=$dockerpath


kubectl get deploy,rs,svc,pods

kubectl port-forward pod/ml-microservice-kubernetes-776594fccc-sjwd8 --address 0.0.0.0 5000:80

