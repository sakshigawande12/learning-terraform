provider "aws" {
  region  = "us-east-1"
  profile = "terraform-sakshi" //update your user-profile for aws keys
}

module "vpc" {
  source = "./modules/vpc"

  cidr_block    = var.cidr_block
  tenancy       = var.tenancy
}

module "subnet" {
  source = "./modules/subnet"

  vpc_id      = module.vpc.id
  subnet_cidr = var.subnet_cidr
  az          = var.az
}

module "gateway" {
  source = "./modules/gateway"

  vpc_id = module.vpc.id
}

module "nat-gw" {
  source = "./modules/nat-gw"

  public_subnet = module.subnet.ids[0]
  gateway_id    = module.gateway.id
}


module "ec2" {
  source = "./modules/ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  public_subnet     = module.subnet.ids[0]
  private_subnet    = module.subnet.ids[1]
}