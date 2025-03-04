variable "cidr_block" {
    description = "CIDR block for the VPC"
    type = string
    default = "10.0.0.0/16"
}
variable "public_subnet_cidrs" {
    description = "CIDR blocks for Public Subnets"
    type = list
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
    description = "CIDR blocks for Private Subnets"
    type = list
    default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "region" {
    description = "AWS region where the resources will be created"
    type = string
    default = "us-east-1"

}