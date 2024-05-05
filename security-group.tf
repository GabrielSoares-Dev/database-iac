resource "aws_security_group" "mysql_security_group" {
  name        = "mysql_security_group"
  description = "Security group to mysql db"
  vpc_id      = data.aws_vpc.vpc.id

  tags = {
    Name = "mysql_security_group"
  }
}