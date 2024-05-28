resource "aws_db_instance" "mysql_cluster" {
  allocated_storage                   = 20
  identifier                          = "mysql-${lower(var.environment)}"
  engine                              = "mysql"
  engine_version                      = "8.0.32"
  parameter_group_name                = "default.mysql8.0"
  storage_type                        = "gp2"
  instance_class                      = "db.t3.micro"
  max_allocated_storage               = 1000
  backup_retention_period             = 7
  username                            = var.mysql_admin_username
  password                            = aws_ssm_parameter.mysql_admin_password.value
  iam_database_authentication_enabled = true
  db_subnet_group_name                = data.aws_db_subnet_group.public_subnet_group.name
  multi_az                            = false
  vpc_security_group_ids              = [aws_security_group.mysql_security_group.id]
  skip_final_snapshot                 = true
  publicly_accessible                 = true
}