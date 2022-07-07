#creates VPC
resource "aws_vpc" "prod-internal" {
  cidr_block       = "10.40.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name        = "Production Internal"
    purpose     = "Production Internal VPC"
    environment = "prod" 
  }
}

resource "aws_default_security_group" "prod-internal" {
  vpc_id = aws_vpc.prod-internal.id

  #ingress {
  # protocol  = -1
  # self      = true
  # from_port = 0
  # to_port   = 0
  #}

  #egress {
  # from_port   = 0
  # to_port     = 0
  # protocol    = "-1"
  # cidr_blocks = ["0.0.0.0/0"]
  #}
}

#Subnet0 10.40.0.0/24
resource "aws_subnet" "prod-interna1-0" {
  vpc_id            = aws_vpc.prod-internal.id
  cidr_block        = "10.40.0.0/24"
  #depends_on        = [aws_vpc.prod-interna1]
  availability_zone = "us-east-1a"
  tags = {
    Name        = "Subnet0-1a"
    purpose     = "Production Internal Subnet 0"
    environment = "prod" 
  }
}

#Subnet1 10.40.1.0/24
resource "aws_subnet" "prod-interna1-1" {
  vpc_id            = aws_vpc.prod-internal.id
  cidr_block        = "10.40.1.0/24"
  #depends_on        = [aws_vpc.prod-interna1]
  availability_zone = "us-east-1b"
  tags = {
    Name        = "Subnet1-1b"
    purpose     = "Production Internal Subnet 1"
    environment = "prod" 
  }
}

#Subnet2 10.40.2.0/24
resource "aws_subnet" "prod-interna1-2" {
  vpc_id            = aws_vpc.prod-internal.id
  cidr_block        = "10.40.2.0/24"
  #depends_on        = [aws_vpc.prod-interna1]
  availability_zone = "us-east-1c"
  tags = {
    Name        = "Subnet2-1c"
    purpose     = "Production Internal Subnet 2"
    environment = "prod" 
  }
}

#Subnet3 10.40.3.0/24
resource "aws_subnet" "prod-interna1-3" {
  vpc_id            = aws_vpc.prod-internal.id
  cidr_block        = "10.40.3.0/24"
  depends_on        = [aws_vpc.prod-internal]
  availability_zone = "us-east-1d"
  tags = {
    Name        = "Subnet3-1d"
    purpose     = "Production Internal Subnet 3"
    environment = "prod" 
  }
}