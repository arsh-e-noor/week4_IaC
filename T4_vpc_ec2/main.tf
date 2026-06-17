provider "aws" {
  region = var.aws_region
}

# -------------------
# VPC
# -------------------

resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "week4-vpc"
  }
}

# -------------------
# Public Subnet
# -------------------

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "week4-public-subnet"
  }
}

# -------------------
# Internet Gateway
# -------------------

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "week4-igw"
  }
}

# -------------------
# Route Table
# -------------------

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "week4-route-table"
  }
}

# -------------------
# Route Table Association
# -------------------

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}

# -------------------
# Security Group
# -------------------

resource "aws_security_group" "web_sg" {
  name        = "week4-security-group"
  description = "Allow SSH"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    description = "SSH"

    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "week4-security-group"
  }
}

# -------------------
# EC2 Instance
# -------------------

resource "aws_instance" "web_server" {

  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type

  subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  tags = {
    Name = "week4-ec2"
  }
}