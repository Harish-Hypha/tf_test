module "vpc" {
  source             = "./modules/network"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  project_name = var.project_name
}

module "public_ec2" {
  source        = "./modules/pub_instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  project_name  = var.project_name
  subnet_id     = module.vpc.public_subnet_id
  key_name      = var.key_name
}

module "private_ec2" {
  source        = "./modules/pvt_instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  project_name  = var.project_name
  subnet_id     = module.vpc.private_subnet_id
  key_name      = var.key_name
}