output "rancher_ec2_id" {
    description = "Rancher ec2 instance id"
    value = aws_instance.rancher_ec2
}

output "rancher_ec2_public_ip" {
    description = "Rncher ec2 instance public ip"
    value = aws_instance.rancher_ec2.public_ip
}
output "rancher_ec2_private_ip" {
    description = "Rancher ec2 instance private ip"
    value = aws_instance.rancher_ec2.public_ip
}

output "k8s_ec2_id" {
    description = "K8s ec2 instance id"
    value = aws_instance.k8s_ec2
}

output "k8s_ec2_public_ip" {
    description = "K8s ec2 instance public ip"
    value = aws_instance.k8s_ec2.public_ip
}

output "k8s_ec2_private_ip" {
    description = "K8s ec2 instance private ip"
    value = aws_instance.k8s_ec2.private_ip
}
