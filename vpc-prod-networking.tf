#creates prodstools VPC used for hosting various tool resources in production
resource "aws_vpc" "prodtools" {
  cidr_block                       = "10.40.0.0/16"
  assign_generated_ipv6_cidr_block = "true"
  instance_tenancy                 = "default"
  tags = {
    Name = "VPC_prodtools"
  }
}

resource "aws_default_network_acl" "prodtools" {
  default_network_acl_id = aws_vpc.prodtools.default_network_acl_id
  depends_on             = [aws_vpc.prodtools]

  #egress rules
  egress {
    rule_no    = 100
    protocol   = "icmp"
    from_port  = 0
    to_port    = 0
    icmp_type  = -1
    icmp_code  = -1
    cidr_block = "0.0.0.0/0"
    action     = "allow"
  }

  egress {
    protocol   = "-1"
    rule_no    = 150
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  #ingress rule
  ingress {
    rule_no    = 100
    protocol   = "icmp"
    from_port  = 0
    to_port    = 0
    icmp_type  = -1
    icmp_code  = -1
    cidr_block = "0.0.0.0/0"
    action     = "allow"
  }
}


#Create SN0-prodtools
resource "aws_subnet" "SN0_prodtools" {
  vpc_id            = aws_vpc.prodtools.id
  cidr_block        = "10.40.0.0/24"
  depends_on        = [aws_vpc.prodtools]
  availability_zone = "us-east-1a"
  tags = {
    Name = "SN0_prodtools"
  }
}

#Create sn1-prodtools
resource "aws_subnet" "SN1_prodtools" {
  vpc_id            = aws_vpc.prodtools.id
  cidr_block        = "10.40.1.0/24"
  depends_on        = [aws_vpc.prodtools]
  availability_zone = "us-east-1b"
  tags = {
    Name = "SN1_prodtools"
  }
}

#Create SN2-prodtools
resource "aws_subnet" "SN2_prodtools" {
  vpc_id            = aws_vpc.prodtools.id
  cidr_block        = "10.40.2.0/24"
  depends_on        = [aws_vpc.prodtools]
  availability_zone = "us-east-1c"
  tags = {
    Name = "SN2_prodtools"
  }
}

#Create SN3-prodtools
resource "aws_subnet" "SN3_prodtools" {
  vpc_id            = aws_vpc.prodtools.id
  cidr_block        = "10.40.3.0/24"
  depends_on        = [aws_vpc.prodtools]
  availability_zone = "us-east-1d"
  tags = {
    Name = "SN3_prodtools"
  }
}

#Create SN4-prodtools
resource "aws_subnet" "SN4_prodtools" {
  vpc_id            = aws_vpc.prodtools.id
  cidr_block        = "10.40.4.0/24"
  depends_on        = [aws_vpc.prodtools]
  availability_zone = "us-east-1e"
  tags = {
    Name = "SN4_prodtools"
  }
}

#Create SN5-prodtools
resource "aws_subnet" "SN5_prodtools" {
  vpc_id            = aws_vpc.prodtools.id
  cidr_block        = "10.40.5.0/24"
  depends_on        = [aws_vpc.prodtools]
  availability_zone = "us-east-1f"
  tags = {
    Name = "SN5_prodtools"
  }
}

#Internet gateway for prodtools VPC
resource "aws_internet_gateway" "prodtools" {
  vpc_id     = aws_vpc.prodtools.id
  depends_on = [aws_vpc.prodtools]
  tags = {
    Name = "IG_prodtools"
  }
}

#create route table for prodtools VPC
resource "aws_route_table" "prodtools" {
  vpc_id     = aws_vpc.prodtools.id
  depends_on = [aws_internet_gateway.prodtools, aws_vpc.prodtools]
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.prodtools.id
  }

  tags = {
    Name = "RT_prodtools"
  }
}

#associate prodtools route table with prodtools vpc
resource "aws_main_route_table_association" "protools" {
  vpc_id         = aws_vpc.prodtools.id
  route_table_id = aws_route_table.prodtools.id
}
