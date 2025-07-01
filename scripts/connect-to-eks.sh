EKS_CLUSTER=dev-k8s-in-action-eks

aws eks update-kubeconfig --region us-east-1 --name $EKS_CLUSTER --profile default    