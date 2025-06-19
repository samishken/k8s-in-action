variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnets_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "public_subnets_cidrs" {
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "state_bucket" {
  description = "S3 bucket for Terraform state"
  type        = string

}

variable "env" {
  description = "Environment (e.g., dev, prod)"
  type        = string
}
