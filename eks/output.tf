output "cluster_id" {
  value = aws_eks_cluster.tiru.id
}

output "node_group_id" {
  value = aws_eks_node_group.tiru.id
}

output "vpc_id" {
  value = aws_vpc.tiru_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.tiru_subnet[*].id
}

output "eks_cluster_update_kubeconfig_command" {
  description = "Command to update kubeconfig for kubectl"
  value       = "aws eks update-kubeconfig --region ${var.aws_region} --name ${aws_eks_cluster.tiru.name}"
}
