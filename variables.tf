variable "environment" {
  type    = string
  default = "DEV"
}

variable "mysql_settings" {
  type = object({
    allocated_storage                   = number
    engine                              = string
    engine_version                      = string
    parameter_group_name                = string
    storage_type                        = string
    instance_class                      = string
    max_allocated_storage               = number
    backup_retention_period             = number
    username                            = string
    iam_database_authentication_enabled = bool
    multi_az                            = bool
    skip_final_snapshot                 = bool
    publicly_accessible                 = bool
  })
}
