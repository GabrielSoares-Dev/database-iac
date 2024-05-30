resource "aws_security_group" "mysql_security_group" {
  name        = "mysql_security_group"
  description = "Security group to mysql db"
  vpc_id      = data.aws_ssm_parameter.vpc_main_id.value

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "mysql_security_group"
  }
}