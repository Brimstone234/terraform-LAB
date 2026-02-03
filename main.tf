# 1. Create the VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}

# 2. Create a Subnet within the VPC
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"

  tags = {
    Name = "main-subnet"
  }
}

# 3. Create EC2 Instance
resource "aws_instance" "demo" {
  ami           = "ami-062aea897630d952b"
  instance_type = "t3.small"

  # This line connects your instance to the new infrastructure
  subnet_id = aws_subnet.public_subnet.id

  tags = {
    Name = "demo-ec2"
  }
}
