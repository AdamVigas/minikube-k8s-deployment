@echo off

REM Start Minikube with Docker driver
minikube start --driver=docker

REM Apply Kubernetes manifests
kubectl apply -f .\k8s\service-account.yaml
kubectl apply -f .\k8s\secret.yaml
kubectl apply -f .\k8s\deployment.yaml
kubectl apply -f .\k8s\service.yaml
kubectl apply -f .\k8s\hpa.yaml
kubectl apply -f .\k8s\pdb.yaml

echo Kubernetes resources applied successfully.
REM Provide instructions to access the service
echo To access the Nginx service, manually run:
echo minikube service nginx-service
