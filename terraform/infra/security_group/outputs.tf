output "Rancher_security_group_id" {
    description  = "Rancher security group ID"
    value = aws_security_group.rancher_sg.id
}

output "K8s_security_group_id" {
    description = "K8s security group ID "
    value = aws_security_group.k8s_sg.id
}

output "rancher_ingress_rules" {
  description = "Ingress rules for Rancher security group"
  value       = aws_security_group.rancher_sg.ingress
}

output "rancher_egress_rules" {
  description = "Egress rules for Rancher security group"
  value       = aws_security_group.rancher_sg.egress
}

output "k8s_ingress_rules" {
  description = "Ingress rules for Kubernetes security group"
  value       = aws_security_group.k8s_sg.ingress
}

output "k8s_egress_rules" {
  description = "Egress rules for Kubernetes security group"
  value       = aws_security_group.k8s_sg.egress
}