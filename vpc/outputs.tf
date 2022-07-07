#internal only vpc
output "prod_int_vpc_id" {
 value = aws_vpc.prod-internal.id
}
output "prod_int_default_sg_id" {
 value = aws_default_security_group.prod-internal.id
}

#external access vpc
output "prod_ext_vpc_id" {
 value = aws_vpc.prod-external.id
}
output "prod_ext_default_sg_id" {
 value = aws_default_security_group.prod-external.id
}

#external subnets
output "prod_ext_sub_0_id" {
 value = aws_subnet.prod-external-0.id
}

output "prod_ext_sub_1_id" {
 value = aws_subnet.prod-external-1.id
}

output "prod_ext_sub_2_id" {
 value = aws_subnet.prod-external-2.id
}

output "prod_ext_sub_3_id" {
 value = aws_subnet.prod-external-3.id
}

#internal subnets
output "prod_int_sub_0_id" {
 value = aws_subnet.prod-interna1-0.id
}

output "prod_int_sub_1_id" {
 value = aws_subnet.prod-interna1-1.id
}

output "prod_int_sub_2_id" {
 value = aws_subnet.prod-interna1-2.id
}

output "prod_int_sub_3_id" {
 value = aws_subnet.prod-interna1-3.id
}
