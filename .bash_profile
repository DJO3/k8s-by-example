# alias
alias gcp_connect="gcloud container clusters get-credentials alpha --zone $ZONE--project $PROJECT && kubectl get nodes"

# functions
function kube_access_token {
    token=$(sed -n 's/\access-token: \(.*\)/\1/p' ~/.kube/config)
    echo $token
} 