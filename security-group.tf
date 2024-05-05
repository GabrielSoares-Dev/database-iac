resource "aws_security_group" "mysql_security_group" {
  name        = "mysql_security_group"
  description = "Security group to mysql db"
  vpc_id      = data.aws_vpc.vpc.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "TCP"
    cidr_blocks = ["172.23.16.1"]
  }
  tags = {
    Name = "mysql_security_group"
  }
}