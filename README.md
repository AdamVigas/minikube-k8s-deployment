# Minikube Kubernetes Deployment with Nginx

This repository provides Kubernetes manifests for deploying an Nginx application on a Minikube cluster. The setup includes a custom ServiceAccount, a Secret for storing an API key, a Deployment for Nginx, a Service to expose the application, a Horizontal Pod Autoscaler (HPA), and a Pod Disruption Budget (PDB). Additionally, a batch script (`deploy.bat`) is provided to automate the deployment process.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)

## Prerequisites

- **Minikube**: Follow the [Minikube installation guide](https://minikube.sigs.k8s.io/docs/start/) for your operating system.
- **kubectl**: Install using the [official guide](https://kubernetes.io/docs/tasks/tools/install-kubectl/).
- **Docker**: Install using the [official guide](https://docs.docker.com/engine/install/).
- **Git**: To clone the repository.

## Setup

1. **Install Minikube, Docker and kubectl** by following the respective installation guides.


2. **Clone this repository**:
```bash
   git clone https://github.com/AdamVigas/minikube-k8s-deployment.git
   cd minikube-k8s-deployment
```

## Usage

1. **Run Docker desktop application.**


2. **Start Minikube and apply Kubernetes manifests:** You can use the provided deploy.bat script to automate the deployment process.

```bash
   ./infra/scripts/deploy.bat
```

This script will perform the following tasks:

- Start Minikube
- Apply the following Kubernetes resources:
- ServiceAccount (k8s/service-account.yaml)
- Secret (k8s/secret.yaml)
- Deployment (k8s/deployment.yaml)
- Service (k8s/service.yaml)
- Horizontal Pod Autoscaler (k8s/hpa.yaml)
- Pod Disruption Budget (k8s/pdb.yaml)

Once all the pods are in the **ready** state, the script will automatically run the Nginx service.
