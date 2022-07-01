output "production_vpc_id" {
  value = aws_vpc.production.id
}

output "production_default_sg_id" {
  value = aws_default_security_group.production.id
}