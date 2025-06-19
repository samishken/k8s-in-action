resource "aws_security_group" "dev_audit_report_app_sg" {
  name        = "${var.env}-${local.project_name}-sg"
  description = "allow-ssh"
  vpc_id      = module.vpc.vpc_id

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Acesse via SSH de qualquer lugar
  }
  tags = {
    Terraform   = "true"
    Name        = "${var.env}-${local.project_name}-sg"
    Project     = "${local.project_name}"
    Environment = "${var.env}"
  }
}
