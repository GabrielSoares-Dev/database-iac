resource "aws_db_subnet_group" "private_subnet_group" {
  name       = "private_subnet_group"
  subnet_ids = [for subnet in data.aws_subnet.private_subnets : subnet.id]

  tags = {
    Name = "Private subnet group"
  }
}