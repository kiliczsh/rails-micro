#!/bin/bash

# Create configmaps
kubectl create -f auth_service/configmap.yaml
kubectl create -f public_api/configmap.yaml
kubectl create -f private_api/configmap.yaml

# Deploy services and deployments
kubectl apply -f auth_service/deployment.yaml
kubectl apply -f auth_service/service.yaml

kubectl apply -f public_api/deployment.yaml
kubectl apply -f public_api/service.yaml

kubectl apply -f private_api/deployment.yaml
kubectl apply -f private_api/service.yaml
