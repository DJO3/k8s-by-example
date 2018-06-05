# Helm

## Instructions
1. Install [Helm](https://github.com/kubernetes/helm)
2. Create Helm service account and clusterrolebinding
    - `kubectl create serviceaccount -n kube-system tiller`
    - `kubectl create clusterrolebinding tiller-binding --clusterrole=cluster-admin --serviceaccount kube-system:tiller`
3. Init service account
    - `helm init --service-account tiller`
4. Update repos
    - `helm repo update`