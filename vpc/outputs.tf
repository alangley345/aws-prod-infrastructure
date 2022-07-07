#internal only vpc
output "prod_int_vpc_id" {
 value = aws_vpc.prod-internal.id
}
output "prod_int_default_sg_id" {
 value = aws_default_security_group.prod-internal
}

#external access vpc
output "prod_ext_vpc_id" {
 value = aws_vpc.prod-external.id
}
output "prod_ext_default_sg_id" {
 value = aws_default_security_group.prod-external.id
}