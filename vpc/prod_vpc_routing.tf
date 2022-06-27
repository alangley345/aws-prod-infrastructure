#Internet gateway for Fortune Cookie VPC
resource "aws_internet_gateway" "production" {
  vpc_id     = aws_vpc.production.id
  depends_on = [aws_vpc.production]
  tags = {
    Name = "Production"
  }
}

#create route table for VPC
resource "aws_route_table" "production" {
  vpc_id     = aws_vpc.production.id
  depends_on = [aws_internet_gateway.production, aws_vpc.production]
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.production.id
  }

  tags = {
    Name = "Production"
  }
}

resource "aws_main_route_table_association" "production" {
  vpc_id         = aws_vpc.production.id
  route_table_id = aws_route_table.production.id
}