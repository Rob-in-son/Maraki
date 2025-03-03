
#Main VPC
resource "aws_vpc" "project1" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name = "project1"
    }
}

#Get available AZs in the region
data aws_availability_zones "available" {
    state = "available"
}

#Public Subnet
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.project1.id        
    count = length(var.public_subnet_cidrs)
    cidr_block = var.public_subnet_cidrs[count.index]
    availability_zone = data.aws_availability_zones.available.names[count.index]
    map_public_ip_on_launch = true
}

#Private Subnet
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.project1.id        
    count = length(var.private_subnet_cidrs)
    cidr_block = var.private_subnet_cidrs[count.index]
    availability_zone = data.aws_availability_zones.available.names[count.index]
    map_public_ip_on_launch = false
}

#Internet Gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.project1.id
    tags = {
        Name = "igw"
    }
}

#Public Route Table
resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.project1.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
        Name = "public-rt"
    }
}

#Private Route Table
resource "aws_route_table"  "private_rt" {
    vpc_id = aws_vpc.project1.id
    tags = {
        Name = "private-rt"
    }
}

#Public Route Association
resource "aws_route_table_association" "public" {
    count = length(var.public_subnet_cidrs)
    subnet_id = element(aws_subnet.public_subnet.*.id, count.index)
    route_table_id = aws_route_table.public_rt.id
}

#Private Route Association
resource "aws_route_table_association" "private" {
    count = length(var.private_subnet_cidrs)
    subnet_id = element(aws_subnet.private_subnet.*.id, count.index)
    route_table_id = aws_route_table.private_rt.id
}

