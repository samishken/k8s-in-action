variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
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
}

variable "tags" { type = map(string) }

variable "map_roles" {
  description = "List of IAM roles to add to aws-auth configmap"
  type        = list(any)
  default     = []
}

variable "github_actions_oidc_role_arn" {
  description = "ARN of the GitHub Actions OIDC IAM role"
  type        = string
}

variable "userarn" {
  description = "ARN of the IAM user to map in aws-auth"
  type        = string
}


variable "map_users" {
  description = "List of IAM users to add to aws-auth configmap"
  type        = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}