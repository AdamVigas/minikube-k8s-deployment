@echo off
:: Start Minikube
minikube start

:: Apply Kubernetes manifests
kubectl apply -f .\k8s\service-account.yaml
kubectl apply -f .\k8s\secret.yaml
kubectl apply -f .\k8s\deployment.yaml
kubectl apply -f .\k8s\service.yaml
kubectl apply -f .\k8s\hpa.yaml
kubectl apply -f .\k8s\pdb.yaml

:: Wait for the pods to be ready
:wait_for_pods
kubectl get pods | findstr "1/1"
IF %ERRORLEVEL% NEQ 0 (
    timeout /t 5 /nobreak
    goto wait_for_pods
)

:: Open the Nginx service
minikube service nginx-service
