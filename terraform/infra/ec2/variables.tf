variable "rancher_ami_id" {
    description = "Amazon Machine Image (AMI) ID"
    type        = string  
}

variable "k8s_ami_id" {
    description = "Amazon Machine Image (AMI) ID"
    type        = string  
}

variable "rancher_instance_type" {
    description = "EC2 instance type"
    type        = string
}

variable "k8s_instance_type" {
    description = "EC2 instance type"
    type        = string
}

variable "key_name" {
    description = "Name of the SSH key"
    type        = string
}

variable "subnet_id" {
    description = "Subnet ID"
    type        = string
}

variable "rancher_security_group_ids" {
    description = "Security group IDs"
    type        = list(string)
}

variable "k8s_security_group_ids" {
    description = "Security group IDs"
    type        = list(string)
}