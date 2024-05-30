resource "aws_ssm_parameter" "mysql_host" {
  name        = "/${lower(var.environment)}/database/mysql/host"
  description = "Admin mysql password"
  type        = "SecureString"
  value       = aws_db_instance.mysql_cluster.domain
  tags = {
    environment = lower(var.environment)
  }
}

resource "aws_ssm_parameter" "mysql_port" {
  name        = "/${lower(var.environment)}/database/mysql/port"
  description = "Admin mysql password"
  type        = "SecureString"
  value       = aws_db_instance.mysql_cluster.port
  tags = {
    environment = lower(var.environment)
  }
}


resource "aws_ssm_parameter" "mysql_admin_username" {
  name        = "/${lower(var.environment)}/database/mysql/username/admin"
  description = "Admin mysql username"
  type        = "SecureString"
  value       = var.mysql_admin_username
  tags = {
    environment = lower(var.environment)
  }

}

resource "aws_ssm_parameter" "mysql_admin_password" {
  name        = "/${lower(var.environment)}/database/mysql/password/admin"
  description = "Admin mysql password"
  type        = "SecureString"
  value       = random_password.mysql_password.result
  tags = {
    environment = lower(var.environment)
  }
}



