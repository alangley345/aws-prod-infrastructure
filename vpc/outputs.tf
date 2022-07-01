output "production_vpc" {
    value = aws_vpc.production.id
}

output "production_default_sg" {
    value = aws_default_security_group.production
}