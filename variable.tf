variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "demo-eks-cluster"
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
  default     = "vpc-0bc304cd71eb7f9e5"
}

variable "subnet_ids" {
  description = "Existing subnet IDs for EKS cluster"
  type        = list(string)
  default     = [
    "subnet-0348fb35c8ce55669", # my-subnet01
    "subnet-0b252e9ef40ef8ff6"  # my-subnet-2
  ]
}


