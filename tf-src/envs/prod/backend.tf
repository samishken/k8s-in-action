terraform {
  backend "s3" {
    bucket = "terraform-state-prod-samboo"
    key    = "prod/k8s-in-action/tfstate-k8s-in-action-app.tfstate"
    region = "us-east-1"
  }
}