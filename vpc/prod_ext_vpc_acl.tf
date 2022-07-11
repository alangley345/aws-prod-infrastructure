resource "aws_default_network_acl" "prod-external" {
  default_network_acl_id = aws_vpc.prod-external.default_network_acl_id
  depends_on             = [aws_vpc.prod-external]
  subnet_ids = [
    aws_subnet.prod-external-0.id,
    aws_subnet.prod-external-1.id,
    aws_subnet.prod-external-2.id,
    aws_subnet.prod-external-3.id
  ]
  
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