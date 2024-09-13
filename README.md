# Minikube Kubernetes Deployment with Nginx

This repository provides Kubernetes manifests for deploying an Nginx application on a Minikube cluster. The setup includes a custom ServiceAccount, a Secret for storing an API key, a Deployment for Nginx, a Service to expose the application, a Horizontal Pod Autoscaler (HPA), and a Pod Disruption Budget (PDB). Additionally, a batch script (`redeploy.bat`) is provided to automate the redeployment process.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)

## Prerequisites

- **Minikube**: Follow the [Minikube installation guide](https://minikube.sigs.k8s.io/docs/start/) for your operating system.
- **kubectl**: Install using the [official guide](https://kubernetes.io/docs/tasks/tools/install-kubectl/).
- **Git**: To clone the repository.

## Setup

1. **Install Minikube and kubectl** by following the respective installation guides.

2. **Clone this repository**:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
```

## Usage 

To deploy the Nginx application along with its associated resources, follow these steps:

Start Minikube and apply Kubernetes manifests: You can use the provided redeploy.bat script to automate the entire deployment process.
```bash
redeploy.bat
```

This script will perform the following tasks:

Start Minikube
Apply the following Kubernetes resources:
ServiceAccount (k8s/service-account.yaml)
Secret (k8s/secret.yaml)
Deployment (k8s/deployment.yaml)
Service (k8s/service.yaml)
Horizontal Pod Autoscaler (k8s/hpa.yaml)
Pod Disruption Budget (k8s/pdb.yaml)
Expose the Nginx service using Minikube.
Access the Nginx service: After running the redeploy.bat script, the Nginx service will be exposed automatically by Minikube, and you can access it via the default browser.