terraform {
  backend "s3" {
    bucket = "terraform-state-dev-samboo"
    key    = "dev/k8s-in-action/tfstate-k8s-in-action-app.tfstate"
    region = "us-east-1"
  }
}