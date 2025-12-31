# Example terraform.tfvars file
# Copy this file to terraform.tfvars and update with your values

aws_region   = "us-east-1"
cluster_name = "demo-eks-cluster"

# Update these with your actual VPC and subnet IDs
vpc_id = "vpc-0bc304cd71eb7f9e5"
subnet_ids = [
  "subnet-0348fb35c8ce55669", # my-subnet01
  "subnet-0b252e9ef40ef8ff6"  # my-subnet-2
]
