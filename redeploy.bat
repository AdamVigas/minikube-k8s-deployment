minikube start
kubectl apply -f .\k8s\service-account.yaml
kubectl apply -f .\k8s\secret.yaml
kubectl apply -f .\k8s\deployment.yaml
kubectl apply -f .\k8s\service.yaml
kubectl apply -f .\k8s\hpa.yaml
kubectl apply -f .\k8s\pdb.yaml
minikube service nginx-service