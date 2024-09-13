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

:: Wait for all pods to be ready
:wait_for_pods
set /a ready_count=0
set /a total_count=0

for /f "tokens=1,2" %%a in ('kubectl get pods --no-headers ^| findstr /r /c:"[0-9]/[0-9]"') do (
    set /a total_count+=1
    if "%%b"=="1/1" set /a ready_count+=1
)

if "%ready_count%"=="%total_count%" (
    echo All pods are ready.
    goto :continue
) else (
    echo Waiting for pods to be ready...
    timeout /t 5 /nobreak
    goto wait_for_pods
)

:continue
:: Open the Nginx service
minikube service nginx-service
