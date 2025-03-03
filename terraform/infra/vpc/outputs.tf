output "vpc_id" {
    description = "VPC id"
    value = aws_vpc.project1.id
}

output "Public_subnet_id" {
    description = "Public subnet id"
    value = aws_subnet.public_subnet.id
}

output "Private_subnet_id" {
    description = "Private subnet id"
    value = aws_subnet.private_subnet.id
}

output "Internet_gateway_id" {
    description = "Internet gateway id"
    value = aws_internet_gateway.igw.id
}

output "public_route_table_id" {
    description = "Public route table id"
    value       = aws_route_table.public_rt.id
}

output "private_route_table_id" {
    description = "Private route table id"
    value       = aws_route_table.private_rt.id
}