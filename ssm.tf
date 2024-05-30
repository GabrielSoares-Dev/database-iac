resource "aws_ssm_parameter" "mysql_admin_username" {
  name        = "/${lower(var.environment)}/database/mysql/username/admin"
  description = "Admin mysql username"
  type        = "SecureString"
  value       = var.mysql_admin_username
  depends_on  = [aws_db_instance.mysql_cluster]
  tags = {
    environment = lower(var.environment)
  }

}

resource "aws_ssm_parameter" "mysql_admin_password" {
  name        = "/${lower(var.environment)}/database/mysql/password/admin"
  description = "Admin mysql password"
  type        = "SecureString"
  value       = random_password.mysql_password.result
  depends_on  = [aws_db_instance.mysql_cluster]
  tags = {
    environment = lower(var.environment)
  }
}

