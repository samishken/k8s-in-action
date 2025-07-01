locals {
  project_name = "dev-k8s-in-action" # Change to your project name 
}


locals {
  module_path = "${path.module}/../../modules/vpc"
}
module "common" {
  source = "../../common"

  cluster_name                 = var.cluster_name
  vpc_cidr                     = var.vpc_cidr
  azs                          = var.azs
  state_bucket                 = var.state_bucket
  env                          = var.env
  github_actions_oidc_role_arn = var.github_actions_oidc_role_arn
  userarn                      = var.userarn
  node_groups = {
    k8s-in-action-ng = {
      instance_types = ["t3.large"]
      capacity_type  = "ON_DEMAND"
      scaling_config = {
        desired_size = 3
        max_size     = 4
        min_size     = 1
      }
      node_tags = {
        Name        = "${var.env}-${local.project_name}-node"
        Environment = "${var.env}"
      }
    }
  }
}