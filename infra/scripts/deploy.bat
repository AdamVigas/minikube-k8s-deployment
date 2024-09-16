@echo off

REM Start Minikube with Docker driver
echo Starting Minikube with Docker driver...
minikube start --driver=docker


REM Apply Kubernetes manifests
echo Applying Kubernetes manifests...
kubectl apply -f .\k8s
echo Kubernetes resources applied successfully.

REM Add a short delay to allow pods to start
timeout /t 15 /nobreak >nul

REM Wait for all pods to be ready in the default namespace (change if necessary)
echo Waiting for all pods to be in Ready state...
kubectl wait --for=condition=ready pod --all --namespace=default --timeout=300s
if %ERRORLEVEL% neq 0 (
    echo Timed out waiting for pods to be ready. Exiting...
    exit /b %ERRORLEVEL%
)

echo All pods are now ready!
minikube service nginx-service
