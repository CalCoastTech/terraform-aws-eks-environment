
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  cidr = var.vpc_module_cidr

  tags = module.git_metadata.all
}

variable "vpc_module_cidr" {
  type = string
  description = "The CIDR block for the VPC."
  default = "10.0.0.0/16"
}
