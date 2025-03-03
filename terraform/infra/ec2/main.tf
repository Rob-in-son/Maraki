resource "aws_instance" "rancher_ec2" {
    ami             = var.rancher_ami_id
    instance_type   = var.rancher_instance_type
    key_name        = var.key_name
    subnet_id       = var.subnet_id
    security_groups = var.rancher_security_group_ids

    tags = {
        Name = "Rancher_ec2"
    }
}

resource "aws_instance" "k8s_ec2" {
    ami             = var.k8s_ami_id
    instance_type   = var.k8s_instance_type
    key_name        = var.key_name
    subnet_id       = var.subnet_id
    security_groups = var.k8s_security_group_ids

    tags = {
        Name = "K8s_ec2"
    }
}