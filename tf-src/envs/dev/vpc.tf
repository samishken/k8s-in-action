# module "audit-report-app-vpc" {
#   source = "../../modules/vpc" # source should point to our custome vpc module

#   cidr = "10.0.0.0/16"

#   azs                   = var.azs
#   private_subnets_cidrs = var.private_subnets
#   public_subnets_cidrs  = var.public_subnets


# }


module "dev-k8s-in-action-vpc" {
  source = "../../modules/vpc"

  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.azs
  private_subnet_cidrs = var.private_subnets_cidrs
  public_subnet_cidrs  = var.public_subnets_cidrs
  cluster_name         = "${local.environment}-${local.project_name}-eks"

  tags = {
    Terraform   = "true"
    Name        = "${local.environment}-${local.project_name}-vpc"
    Project     = "${local.project_name}"
    Environment = "${local.environment}"
  }
}
