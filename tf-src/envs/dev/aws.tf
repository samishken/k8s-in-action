# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }


# resource "aws_instance" "my_server" {
#   for_each = {
#     "nano"  = "t2.nano"
#     "micro" = "t2.micro"
#     "small" = "t2.small"
#   }
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = each.value
#   provisioner "local-exec" {
#     command = "echo ${self.private_ip} >> private_ips.txt"
#   }
#   # allows you to change what happens to resources e.g. create, update, destroy.
#   lifecycle {
#     prevent_destroy = false # true: prevents the instance from being destroyed.  This is useful for exam prep to avoid accidental deletions
#     ignore_changes = [
#       tags["Environment"], # Terraform will ignore manual changes to this tag
#       user_data,           # Also ignore changes to user_data
#     ]
#   }
#   tags = {
#     Name        = "${local.environment}-${local.project_name}-${each.key}"
#     Environment = "${local.environment}"
#   }
# }
