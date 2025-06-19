module "eks" {
  source = "../modules/eks"

  cluster_name    = "${var.env}-${local.project_name}-eks"
  cluster_version = var.cluster_version
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnet_ids
  node_groups     = var.node_groups

  tags = {
    Terraform   = "true"
    Name        = "${var.env}-${local.project_name}-eks-cluster"
    Project     = "${local.project_name}"
    Environment = "${var.env}"
  }
}


variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.32"
}

variable "node_groups" {
  description = "EKS node group configuration"
  type = map(object({
    instance_types = list(string)
    capacity_type  = string
    scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number
    })
  }))
  default = {
    k8s-in-action-ng = {
      instance_types = ["t3.large"]
      capacity_type  = "ON_DEMAND"
      scaling_config = {
        desired_size = 3
        max_size     = 4
        min_size     = 1
      }
    }
  }
}