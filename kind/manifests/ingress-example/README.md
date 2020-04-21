# Prerequisites
1) Docker
2) Kubectl
3) [Kind](https://github.com/kubernetes-sigs/kind/releases)

# Clone Repo
git clone git@github.com:HammerMeetNail/k8s-by-example.git

# Create 1 node cluster with Ingress patch
kind create cluster --config k8s-by-example/kind/one-node-ingress.yaml

# Check cluster info
kubectl cluster-info

# Check kubeconfig
cat ~/.kube/config

# Show docker image
docker images | grep kind

# Show docker containers
docker ps | grep kind

# Deploy Kind Nginx Ingress Controller
kubectl apply -f k8s-by-example/kind/manifests/ingress-example/nginx-controller.yaml

# Wait for ingress-nginx-controller to be running
kubectl get pods -n ingress-nginx

# Deploy Pod and expose with Ingress
kubectl apply -f k8s-by-example/kind/manifests/ingress-example/echo.yaml

# Get ingress controller logs 
kubectl logs deployment/ingress-nginx-controller -n ingress-nginx

# Test ingress
curl localhost/foo

