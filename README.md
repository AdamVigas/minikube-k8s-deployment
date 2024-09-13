# Minikube Kubernetes Deployment with Nginx

This repository provides Kubernetes manifests for deploying an Nginx application on a Minikube cluster. The setup includes a custom ServiceAccount, a Secret for storing an API key, a Deployment for Nginx, a Service to expose the application, a Horizontal Pod Autoscaler (HPA), and a Pod Disruption Budget (PDB).

## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)


## Prerequisites

- **Minikube**: Follow the [Minikube installation guide](https://minikube.sigs.k8s.io/docs/start/) for your operating system.
- **kubectl**: Install using the [official guide](https://kubernetes.io/docs/tasks/tools/install-kubectl/).
- **Git**: To clone the repository.

## Setup

1. **Install Minikube and kubectl** by following the respective installation guides.

2. **Start Minikube**:
   ```bash
   minikube start
