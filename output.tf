output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "vpc_id" {
  value = data.aws_vpc.existing.id
}

output "subnets_used" {
  value = var.subnet_ids
}
