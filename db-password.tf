resource "random_password" "mysql_password" {
  length           = 16
  special          = false
}