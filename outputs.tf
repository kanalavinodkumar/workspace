output "internet_gateway" {
  value = aws_internet_gateway.main.id
}

output "vpc" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public_subnet.id
}

output "public_rt" {
  value = aws_route_table.public_rt.id
}

output "workspace" {
  value = terraform.workspace
}
