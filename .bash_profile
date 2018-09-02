# env
export ZONE="zone"
export PROJECT="project-id"

# alias
alias connect-cluster="gcloud container clusters get-credentials dev --zone $ZONE --project $PROJECT && kubectl get nodes"
alias delete-cluster="gcloud container clusters delete dev --project $PROJECT --zone $ZONE"
alias create-cluster="gcloud container clusters create dev \
--project $PROJECT \
--cluster-version latest \
--zone $ZONE \
--machine-type g1-small \
--image-type COS \
--disk-size 10 \
--node-locations $ZONE \
--maintenance-window 07:00 \
--enable-autoscaling \
--min-nodes 1 \
--max-nodes 3 \
--addons HttpLoadBalancing,HorizontalPodAutoscaling,KubernetesDashboard,NetworkPolicy \
--labels machine-type=g1-small,preempt=true,region=$ZONE \
--node-labels machine-type=g1-small,preempt=true,region=$ZONE \
--preemptible \
--enable-autorepair \
--enable-autoupgrade \
--enable-network-policy"

# functions
function kube-access-token {
    token=$(sed -n 's/access-token: \(.*\)/\1/p' ~/.kube/config)
    echo $token
}   
