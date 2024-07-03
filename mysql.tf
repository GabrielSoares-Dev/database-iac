resource "aws_db_instance" "mysql_cluster" {
  allocated_storage                   = var.mysql_settings.allocated_storage
  identifier                          = "mysql-${lower(var.environment)}"
  engine                              = var.mysql_settings.engine
  engine_version                      = var.mysql_settings.engine_version
  parameter_group_name                = var.mysql_settings.parameter_group_name
  storage_type                        = var.mysql_settings.storage_type
  instance_class                      = var.mysql_settings.instance_class
  max_allocated_storage               = var.mysql_settings.max_allocated_storage
  backup_retention_period             = var.mysql_settings.backup_retention_period
  username                            = var.mysql_settings.username
  password                            = aws_ssm_parameter.mysql_admin_password.value
  iam_database_authentication_enabled = var.mysql_settings.iam_database_authentication_enabled
  db_subnet_group_name                = data.aws_db_subnet_group.public_subnet_group.name
  multi_az                            = var.mysql_settings.multi_az
  vpc_security_group_ids              = [aws_security_group.mysql_security_group.id]
  skip_final_snapshot                 = var.mysql_settings.skip_final_snapshot
  publicly_accessible                 = var.mysql_settings.publicly_accessible
}

