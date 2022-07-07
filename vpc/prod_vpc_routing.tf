#Internet gateway for Production VPC
resource "aws_internet_gateway" "prod-external" {
  vpc_id     = aws_vpc.prod-external.id
  depends_on = [aws_vpc.prod-external]
  tags = {
    Name        = "External GW"
    purpose     = "Production External Network"
    environment = "prod" 
  }
}

#create route table for Production VPC
resource "aws_route_table" "prod-external" {
  vpc_id     = aws_vpc.prod-external.id
  depends_on = [aws_internet_gateway.prod-external, aws_vpc.prod-external]
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.prod-external.id
  }

  tags = {
    Name        = "External Route Table"
    purpose     = "Production External Network"
    environment = "prod" 
  }
}

resource "aws_main_route_table_association" "prod-external" {
  vpc_id         = aws_vpc.prod-external.id
  route_table_id = aws_route_table.prod-external.id
}