resource "aws_db_security_group" "mysql_security_group" {
  name = "mysql_security_group"

  ingress {}
}