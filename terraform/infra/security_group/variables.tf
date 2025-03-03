variable "vpc_id" {
    description = "VPC ID for the security group"
    type = string

}

variable "rancher_sg" {
    description = "Security group name for Rancher"
    type = string
    default = "rancher-sg"
}

variable "k8s_sg" {
    description = "Security group name for K8s"
    type = string
    default = "k8s-sg"
}

variable "rancher_ingress_ports" {
  description = "List of ingress ports to allow (TCP)"
  type        = list(number)
}

variable "rancher_egress_ports" {
  description = "List of egress ports to allow (TCP)"
  type        = list(number)
  default     = [0]  #Allow all outbound traffic
}

variable "k8s_ingress_ports" {
  description = "List of ingress ports to allow (TCP)"
  type        = list(number)
}

variable "k8s_egress_ports" {
  description = "List of egress ports to allow (TCP)"
  type        = list(number)
  default     = [0]  # Allow all outbound traffic
}

variable "rancher_ingress_cidr_blocks" {
  description = "CIDR blocks allowed for Rancher ingress"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Allow all by default
}

variable "rancher_egress_cidr_blocks" {
  description = "CIDR blocks allowed for Rancher egress"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Allow all by default
}

variable "k8s_ingress_cidr_blocks" {
  description = "CIDR blocks allowed for Kubernetes ingress"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Allow all by default
}

variable "k8s_egress_cidr_blocks" {
  description = "CIDR blocks allowed for Kubernetes egress"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Allow all by default
}