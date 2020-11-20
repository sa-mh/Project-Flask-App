#!/bin/bash

kubectl apply -f nginx-cm.yaml

kubectl apply -f frontend.yaml

kubectl apply -f frontend-cip.yaml

kubectl apply -f backend.yaml

kubectl apply -f backend-cip.yaml

kubectl apply -f nginx.yaml

kubectl apply -f nginx-lb.yaml
