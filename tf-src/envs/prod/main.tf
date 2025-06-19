
locals {
  project_name = "prod-k8s-in-action" # Change to your project name 
}

locals {
  module_path = "${path.module}/../../modules/vpc"
}

module "common" {
  source = "../../common"

  cluster_name = var.cluster_name
  vpc_cidr     = var.vpc_cidr
  azs          = var.azs
  state_bucket = var.state_bucket
  env          = var.env
}