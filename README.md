# k8s-in-action

This project demonstrates a complete Kubernetes (EKS) infrastructure setup on AWS using Terraform. It includes reusable modules for VPC, ECR, and EKS, and provides environment-specific configurations for development, staging, and production.

## Structure

- **app/**: Application-specific Terraform code.
- **scripts/**: Utility scripts (e.g., connect to EKS cluster).
- **tf-src/**: Main Terraform source code.
  - **envs/**: Environment-specific configurations (dev, prod, staging).
  - **modules/**: Reusable Terraform modules for VPC, ECR, and EKS.

## Usage

1. **Initialize Terraform**

   ```sh
   cd tf-src/envs/dev
   terraform init
   ```

Collecting workspace information```md
# k8s-in-action

This project demonstrates a complete Kubernetes (EKS) infrastructure setup on AWS using Terraform. It includes reusable modules for VPC, ECR, and EKS, and provides environment-specific configurations for development, staging, and production.

## Structure

```
.
├── app/
│   └── eks-1/
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── scripts/
│   └── connect-to-eks.sh
└── tf-src/
    ├── README.md
    ├── envs/
    │   ├── dev/
    │   ├── prod/
    │   └── staging/
    └── modules/
        ├── ecr/
        ├── eks/
        └── vpc/
```

- **app/**: Application-specific Terraform code.
- **scripts/**: Utility scripts (e.g., connect to EKS cluster).
- **tf-src/**: Main Terraform source code.
  - **envs/**: Environment-specific configurations (dev, prod, staging).
  - **modules/**: Reusable Terraform modules for VPC, ECR, and EKS.

## Usage

1. **Initialize Terraform**

   ```sh
   cd tf-src/envs/dev
   terraform init
   ```

2. **Plan Infrastructure**

   ```sh
   terraform plan
   ```

3. **Apply Infrastructure**

   ```sh
   terraform apply
   ```

4. **Connect to EKS**

   ```sh
   ../scripts/connect-to-eks.sh
   ```

## Modules

- **VPC**: Creates a VPC with public/private subnets, NAT gateways, and routing.
- **EKS**: Provisions an EKS cluster and node groups.
- **ECR**: Creates an Elastic Container Registry for Docker images.

## Requirements

- Terraform >= 1.0
- AWS CLI
- AWS credentials configured

## Notes

- State is managed remotely in S3 (see `backend.tf`).
- Sensitive files (e.g., `.tfstate`, `.tfvars`) are git-ignored.
- Customize variables in each environment as needed.


