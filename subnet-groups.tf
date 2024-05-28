data "aws_db_subnet_group" "public_subnet_group" {
  name = "public_subnet_group"
}

data "aws_db_subnet_group" "private_subnet_group" {
  name = "private_subnet_group"
}