resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = lookup(var.tags, terraform.workspace)
}

resource "aws_vpc" "main" {
  cidr_block = lookup(var.vpc_cidr, terraform.workspace)
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = lookup(var.tags, terraform.workspace)
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = lookup(var.subnet_cidr, terraform.workspace)

  tags = lookup(var.tags, terraform.workspace)
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = lookup(var.tags, terraform.workspace)
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}