# VPC Module

### Resources to be created
- 1 VPC
- 6 subnets, 3 private and 3 public
- 1 Internet Gateway: public subnet can have access to Internet
- `private Route tables` determine where network traffic from subnets is directed, typically within the VPC itself or to other private resources.
- `private route tables`: Private route table: to route traffic between subnets
- `public route tables`: associate with public subnet for internet gateway
- route table association
- eip:public IPv4 address that you reserve for your AWS account
- nat_gateway:  Gateway connects VPC to another network



# VPC Terraform Module

This module provisions an AWS Virtual Private Cloud (VPC) with public and private subnets, an Internet Gateway, and associated route tables.

## Features

- Creates a VPC with configurable CIDR block
- Provisions multiple public and private subnets across specified Availability Zones
- Attaches an Internet Gateway to the VPC
- Sets up route tables for public subnets with internet access
- Outputs VPC and subnet IDs

## Usage

```hcl
module "vpc" {
  source          = "../modules/vpc"
  vpc_cidr        = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
  azs             = ["us-west-2a", "us-west-2b"]
}