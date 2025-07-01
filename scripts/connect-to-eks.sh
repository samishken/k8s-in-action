EKS_CLUSTER=dev-k8s-in-action-eks
export AWS_PROFILE=github-actions-oidc
aws eks update-kubeconfig --region us-east-1 --name $EKS_CLUSTER --profile github-actions-oidc

aws sts get-caller-identity