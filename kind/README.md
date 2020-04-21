# Summary
Information on how to spin up a local Kubernetes cluster using [kind](https://github.com/kubernetes-sigs/kind)

# Quickstart
`kind create cluster --config three-node.yaml --image kindest/node:v1.17.0`

# Example
```
dave@ubuntu-vm02:~/git/k8s-by-example/kind$ kind create cluster --config three-node.yaml --image kindest/node:v1.17.0
Creating cluster "kind" ...
 ✓ Ensuring node image (kindest/node:v1.17.0) 🖼
 ✓ Preparing nodes 📦 
 ✓ Writing configuration 📜 
 ✓ Starting control-plane 🕹️ 
 ✓ Installing CNI 🔌 
 ✓ Installing StorageClass 💾 
 ✓ Joining worker nodes 🚜 
Set kubectl context to "kind-kind"
You can now use your cluster with:

kubectl cluster-info --context kind-kind

Have a question, bug, or feature request? Let us know! https://kind.sigs.k8s.io/#community 🙂
dave@ubuntu-vm02:~/git/k8s-by-example/kind$ kubectl config set-context kind-kind
Context "kind-kind" modified.
dave@ubuntu-vm02:~/git/k8s-by-example/kind$ kubectl cluster-info
Kubernetes master is running at https://127.0.0.1:45985
KubeDNS is running at https://127.0.0.1:45985/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

# Credit
[Kind Ingress Docs](https://kind.sigs.k8s.io/docs/user/ingress/)