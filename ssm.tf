resource "aws_ssm_parameter" "mysql_admin_password" {
  name        = "/${lower(var.environment)}/database/mysql/password/admin"
  description = "Admin mysql password"
  type        = "SecureString"
  value       =  random_password.mysql_password.result

  tags = {
    environment = lower(var.environment)
  }
}