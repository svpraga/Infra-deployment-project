variable "env" {}
variable "db_instance_class" {}
variable "db_name" {}
variable "db_username" {}
variable "db_password" { sensitive = true }
variable "vpc_id" {}
variable "private_subnet_id" {}