module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = "${var.project}-${var.env}-cluster"
  kubernetes_version = var.kubernetes_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  endpoint_public_access  = true
  endpoint_private_access = true

  enable_irsa                              = true
  enable_cluster_creator_admin_permissions = true

  addons = {
    vpc-cni = {
      most_recent    = true
      before_compute = true
    }
    kube-proxy = {
      most_recent = true
    }
    coredns = {
      most_recent = true
    }
    eks-pod-identity-agent = {
      most_recent = true
    }

    eks_managed_node_groups = {
      main = {
        desired_capacity = var.desired_size
        max_capacity     = var.max_size
        min_capacity     = var.min_size

        instance_types = var.instance_types
      }
    }

    tags = {
      Project = var.project
      Env     = var.env
    }
  }
}
