#creates VPC
resource "aws_vpc" "prod-external" {
  cidr_block           = "10.41.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true
  
  tags = {
    Name        = "Production External"
    purpose     = "Production External VPC"
    environment = "prod" 
  }
}

resource "aws_default_security_group" "prod-external" {
  vpc_id = aws_vpc.prod-external.id

  #ingress {
  # protocol  = -1
  # self      = true
  # from_port = 0
  # to_port   = 0
  #}

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#Subnet0 10.41.0.0/24
resource "aws_subnet" "prod-external-0" {
  vpc_id            = aws_vpc.prod-external.id
  cidr_block        = "10.41.0.0/24"
  depends_on        = [aws_vpc.prod-external]
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name        = "Subnet0-1a"
    purpose     = "Production External Network"
    environment = "prod" 
  }
}

#Subnet1 10.41.1.0/24
resource "aws_subnet" "prod-external-1" {
  vpc_id            = aws_vpc.prod-external.id
  cidr_block        = "10.41.1.0/24"
  depends_on        = [aws_vpc.prod-external]
  availability_zone = "us-east-1b"
  tags = {
    Name        = "Subnet1-1b"
    purpose     = "Production External Network"
    environment = "prod" 
  }
}

#Subnet2 10.41.2.0/24
resource "aws_subnet" "prod-external-2" {
  vpc_id            = aws_vpc.prod-external.id
  cidr_block        = "10.41.2.0/24"
  depends_on        = [aws_vpc.prod-external]
  availability_zone = "us-east-1c"
  tags = {
    Name        = "Subnet2-1c"
    purpose     = "Production External Network"
    environment = "prod" 
  }
}

#Subnet3 10.41.3.0/24
resource "aws_subnet" "prod-external-3" {
  vpc_id            = aws_vpc.prod-external.id
  cidr_block        = "10.41.3.0/24"
  depends_on        = [aws_vpc.prod-external]
  availability_zone = "us-east-1d"
  tags = {
    Name        = "Subnet3-1d"
    purpose     = "Production External Network"
    environment = "prod" 
  }
}