#Rancher SG
resource "aws_security_group" "rancher_sg" {
    name = var.rancher_sg
    description = "Security group for Rancher_sg"
    vpc_id = var.vpc_id

    #Ingress rules
    dynamic "ingress" {
        for_each = var.rancher_ingress_ports
        content {
            from_port = ingress.value
            to_port = ingress.value
            protocol = "tcp"
            cidr_blocks = var.rancher_ingress_cidr_blocks
        }
    }

    #Egress rule
    dynamic "egress" {
        for_each = var.rancher_egress_ports
        content {
            from_port = egress.value
            to_port = egress.value
            protocol = "tcp"
            cidr_blocks = var.rancher_egress_cidr_blocks
        }
    }
}

# k8s SG
resource "aws_security_group" "k8s_sg" {
    name = var.k8s_sg
    description = "Security group for k8s_sg"
    vpc_id = var.vpc_id

    #Ingress rules
    dynamic "ingress" {
        for_each = var.k8s_ingress_ports
        content {
            from_port = ingress.value
            to_port = ingress.value
            protocol = "tcp"
            cidr_blocks = var.k8s_ingress_cidr_blocks
        }
    }

    #Egress rules
    dynamic "egress" {
        for_each = var.k8s_egress_ports
        content {
            from_port = egress.value
            to_port = egress.value
            protocol = "tcp"
            cidr_blocks = var.k8s_egress_cidr_blocks    
        }
    }
}

