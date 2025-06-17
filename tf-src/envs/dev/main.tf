locals {
  project_name = "k8s-in-action" # Change to your project name 
}

locals {
  environment = "dev" # Change to "prod", "staging", etc. as needed
}

locals {
  module_path = "${path.module}/../../modules/vpc"
}