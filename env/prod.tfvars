environment = "PROD"

mysql_settings = {
  allocated_storage                   = 20
  engine                              = "mysql"
  engine_version                      = "8.0.32"
  parameter_group_name                = "default.mysql8.0"
  storage_type                        = "gp2"
  instance_class                      = "db.t3.micro"
  max_allocated_storage               = 1000
  backup_retention_period             = 7
  username                            = "admin"
  iam_database_authentication_enabled = true
  multi_az                            = false
  skip_final_snapshot                 = true
  publicly_accessible                 = true
}