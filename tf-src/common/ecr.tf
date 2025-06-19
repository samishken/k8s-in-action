module "ecr" {
  source = "../modules/ecr"

  repository_name = "${var.env}-${local.project_name}-ecr"

  tags = {
    Terraform   = "true"
    Name        = "${var.env}-${local.project_name}-ecr"
    Project     = "${local.project_name}"
    Environment = "${var.env}"

  }
}