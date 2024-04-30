provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      "owner"        = "DevopsTeam"
      "project-name" = "sql-database-iac-${var.environment}"
      "managed-by"   = "terraform"
    }
  }
}