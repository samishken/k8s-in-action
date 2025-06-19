module "vpc" {
  source = "../modules/vpc"

  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.azs
  private_subnet_cidrs = var.private_subnets_cidrs
  public_subnet_cidrs  = var.public_subnets_cidrs
  cluster_name         = "${var.env}-${local.project_name}-eks"

  tags = {
    Terraform   = "true"
    Name        = "${var.env}-${local.project_name}-vpc"
    Project     = "${local.project_name}"
    Environment = "${var.env}"
  }
}
