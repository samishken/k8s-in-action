variable "repository_name" {
  type        = string
  default     = "audit-report-app-ecr"
  description = "ECR repo to store a Docker image"
}

variable "tags" { type = map(string) }