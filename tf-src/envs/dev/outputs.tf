# output "instance_ip_address" {
#   description = "The public IP address of the instance"
#   value       = values(aws_instance.my_server)[*].public_ip
# }
output "all_vpc_module_outputs" {
  value = module.dev-k8s-in-action-vpc
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.dev-k8s-in-action-vpc.vpc_id
}

output "private_subnets" {
  value = module.dev-k8s-in-action-vpc.private_subnet_ids
}

output "cluster_name" {
  value = module.k8s-in-action-eks.cluster_name

}