module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  subnets = concat(module.vpc.private_subnets, module.vpc.public_subnets)
  vpc_id  = module.vpc.vpc_id

  # Required Arguments
  # Assumptions are made but details for each default value
  cluster_name  = var.eks_module_cluster_name
  worker_groups = var.eks_module_worker_groups
}

variable "eks_module_cluster_name" {
  description = "Name of the EKS cluster. Also used as a prefix in names of related resources."
  type        = string
  # Assume no preference on cluster name
  default = "my-cluster"
}

variable "eks_module_worker_groups" {
  description = "A list of maps defining worker group configurations to be defined using AWS Launch Configurations. See workers_group_defaults for valid keys."
  type        = any
  # Assume want for at least one worker group for cluster
  default = [
    {
      instance_type = "t3.medium"
      asg_max_size  = 5
      asg_min_size  = 1
    },
  ]
}
