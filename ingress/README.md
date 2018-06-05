# GCE

## Prerequisites
1. Install and configure [Helm](../helm/README.MD)
2. Create ClusterIssuer
    - Update email addresses in `letsencrypt-issuer.yaml`
    - `kubectl apply -f letsencrypt-issuer.yaml`
3. Create static IP address in [External IP Addresses](https://console.cloud.google.com/networking/addresses)
    - `gcloud compute addresses create hello-server-ip --global`
4. Add a `Zone` and `A` record to [Cloud DNS](https://console.cloud.google.com/net-services/dns) for domain
    - `A` record should direct to static IP address 

## Instructions
1. Create Depoyment and Service
    - `kubectl apply -f app.yaml`
2. Create Ingress
    - `kubectl apply -f ingress.yaml`
3. Create Certificate
    - Update `certificate.yaml` to use your domain instead of pytools.org
    - `kubectl apply -f certificate.yaml`
4. Update Ingress to use TLS
    - `kubectl apply -f ingress-tls.yaml`

# Misc
`kubectl get ingress -o=yaml fanout-ingress`