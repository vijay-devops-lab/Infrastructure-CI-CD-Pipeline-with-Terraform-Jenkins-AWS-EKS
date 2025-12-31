module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.3"

  cluster_name    = var.cluster_name
  cluster_version = "1.31"

  vpc_id     = data.aws_vpc.existing.id
  subnet_ids = var.subnet_ids

  enable_irsa = true

  # Enable all control plane logging for security compliance (Trivy AVD-AWS-0038)
  cluster_enabled_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  # Note on Trivy AVD-AWS-0104: EKS node groups require egress to 0.0.0.0/0 for:
  # - ECR image pulls, S3 access, EC2 metadata service, VPC endpoints
  # - Kubernetes API communication, cluster add-ons, and AWS service integration
  # This is a standard AWS EKS configuration requirement

  eks_managed_node_groups = {
    default = {
      min_size     = 1
      max_size     = 2
      desired_size = 1

      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}
