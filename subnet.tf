data "aws_subnet" "private_subnets" {
  filter {
    name   = "tag:Name"
    values = ["first_private_subnet","second_private_subnet","third_private_subnet"]
  }
}