provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      "owner"        = "DevopsTeam"
      "project-name" = "database-iac-${var.environment}"
      "managed-by"   = "terraform"
    }
  }
}

data "aws_db_subnet_group" "subnet_group" {
  name = "private_subnet_group"
}