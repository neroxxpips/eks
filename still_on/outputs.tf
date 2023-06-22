output "cluster-name" {
  value = aws_eks_cluster.cluster.name
}

output "endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "launch_template_name" {
  value = aws_launch_template.bottlerocket_lt.name_prefix
}

output "node_group_name" {
  value = aws_eks_node_group.worker-node-group.node_group_name
}