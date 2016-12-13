#!/bin/bash
kubectl create -f deployment/prometheus-configmap.yaml
kubectl create -f deployment/prometheus-deployment.yaml
kubectl create -f deployment/node-exporter.yaml
kubectl create -f deployment/grafana-deployment.yaml
kubectl create -f deployment/pushgateway-deployment.yaml
