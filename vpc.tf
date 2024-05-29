data "aws_ssm_parameter" "vpc_main_id" {
  name = "/vpc/main/id"
}