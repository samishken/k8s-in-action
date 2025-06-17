module "k8s_in_action_ecr" {
  source = "../../modules/ecr"

  repository_name = "${local.environment}-${local.project_name}-ecr"

  tags = {
    Terraform   = "true"
    Name        = "${local.environment}-${local.project_name}-ecr"
    Project     = "${local.project_name}"
    Environment = "${local.environment}"

  }
}