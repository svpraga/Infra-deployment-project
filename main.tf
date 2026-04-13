module "vpc" {
  source              = "./modules/vpc"
  env                 = var.env
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "ec2" {
  source        = "./modules/ec2"
  env           = var.env
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  vpc_id        = module.vpc.vpc_id
}

module "rds" {
  source            = "./modules/rds"
  env               = var.env
  db_instance_class = var.db_instance_class
  db_name           = var.db_name
  db_username       = var.db_username
  db_password       = var.db_password
  vpc_id            = module.vpc.vpc_id
  private_subnet_id = module.vpc.private_subnet_id
}