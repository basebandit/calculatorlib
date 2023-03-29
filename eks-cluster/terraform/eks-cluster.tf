module "eks"{
  source = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"
  cluster_name = "calcapp-eks-cluster"
  cluster_version = "1.24"

  cluster_endpoint_public_access = true
  
  vpc_id = module.calcapp-vpc.vpc_id
  subnet_ids = module.calcapp-vpc.private_subnets

  tags = {
    environment = "staging"
    application = "calcapp"
  }

  eks_managed_node_groups = {
    dev = {
      min_size = 1
      max_size = 3
      desired_size = 2

      instance_type = ["t2.small"]
    }
  }
}