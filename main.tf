terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
    bucket = "remote-state-devops-team-us"
    key    = "iac/database-iac/terraform.tfstate"
    region = "us-east-2"
  }
}

data "aws_subnet" "private_subnets" {
  filter {
    name   = "tag:Name"
    values = ["first_private_subnet","second_private_subnet","third_private_subnet"]
  }
}