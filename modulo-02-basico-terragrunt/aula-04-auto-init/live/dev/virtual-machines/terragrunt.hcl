terraform {
  source = "../../../terraform/ec2"
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region  = "us-east-1"
  profile = "avera-terragrunt"
}
EOF
}

inputs = {
  name = "EC2 Terragrunt"
}
