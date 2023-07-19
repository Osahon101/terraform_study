module "vpc_and_subnet" {
  source = "../child-module"
  vpc_tag = "canada"
  subnet_tag = "subnet"

  create_subnet = true
  vpc_cidr      = "10.0.0.0/16"
  subnet_cidr   = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_az     = ["ca-central-1a", "ca-central-1b", "ca-central-1c"]
}

output "vpc_module_id" {
  value = module.vpc_and_subnet
}