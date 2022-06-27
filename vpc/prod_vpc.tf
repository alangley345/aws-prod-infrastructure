#creates VPC
resource "aws_vpc" "production" {
  cidr_block       = "10.40.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "Production Network"
  }
}

#Subnet1 10.40.0.0/24
resource "aws_subnet" "production-0" {
  vpc_id            = aws_vpc.production.id
  cidr_block        = "10.40.0.0/24"
  depends_on        = [aws_vpc.production]
  availability_zone = "us-east-1a"
  tags = {
    Name = "Production 0"
  }
}

#Subnet1 10.40.1.0/24
resource "aws_subnet" "production-1" {
  vpc_id            = aws_vpc.production.id
  cidr_block        = "10.40.1.0/24"
  depends_on        = [aws_vpc.production]
  availability_zone = "us-east-1a"
  tags = {
    Name = "Production 1"
  }
}

#Subnet1 10.40.2.0/24
resource "aws_subnet" "production-2" {
  vpc_id            = aws_vpc.production.id
  cidr_block        = "10.40.2.0/24"
  depends_on        = [aws_vpc.production]
  availability_zone = "us-east-1a"
  tags = {
    Name = "Production 2"
  }
}

#Subnet1 10.40.3.0/24
resource "aws_subnet" "production-3" {
  vpc_id            = aws_vpc.production.id
  cidr_block        = "10.40.3.0/24"
  depends_on        = [aws_vpc.production]
  availability_zone = "us-east-1a"
  tags = {
    Name = "Production 3"
  }
}