variable "aws_region" {
  default = "us-east-1"
}

variable "env" {
  description = "Environment name"
}

variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}
variable "instance_type" {}
variable "db_instance_class" {}
variable "db_name" {}
variable "db_username" {}
variable "db_password" {
  sensitive = true
}