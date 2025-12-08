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

