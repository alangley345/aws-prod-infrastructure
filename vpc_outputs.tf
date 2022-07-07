#vpc outputs
output "prod_int_vpc_id" {
  value = module.vpc.prod_int_vpc_id
}

output "prod_int_default_sg_id" {
  value = module.vpc.prod_int_default_sg_id
}

output "prod_ext_vpc_id" {
  value = module.vpc.prod_ext_vpc_id
}

output "prod_ext_default_sg_id" {
  value = module.vpc.prod_ext_default_sg_id
}

#external subnets
output "prod_ext_sub_0_id" {
 value = module.vpc.prod_ext_sub_0_id
}

output "prod_ext_sub_1_id" {
 value = module.vpc.prod_ext_sub_1_id
}

output "prod_ext_sub_2_id" {
 value = module.vpc.prod_ext_sub_2_id
}

output "prod_ext_sub_3_id" {
 value = module.vpc.prod_ext_sub_3_id
}

#internal subnets
output "prod_int_sub_0_id" {
 value = module.vpc.prod_int_sub_0_id
}

output "prod_int_sub_1_id" {
 value = module.vpc.prod_int_sub_1_id
}

output "prod_int_sub_2_id" {
 value = module.vpc.prod_int_sub_2_id
}

output "prod_int_sub_3_id" {
 value = module.vpc.prod_int_sub_3_id
}