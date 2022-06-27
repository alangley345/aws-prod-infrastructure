#route53 hosted dns zones and records
module "public_dns_zones" {
  source = "./public_dns_zones"
}

#certificates for AWS resources
module "certificates" {
  source = "./certificates"

  aaronlangley_zone = module.public_dns_zones.aaronlangley_zone_id
}

#api gateways shared across domains
module "api_gateway" {
  source = "./api_gateway"

  gw_cert   = module.certificates.wildcard_arn
  rt53_zone = module.public_dns_zones.aaronlangley_zone_id
}

#s3 buckets
module "s3" {
 source = "./s3"
}

#iam
module "iam" {
 source = "./iam"

 pgp_key = data.local_file.pgp_key.content
}

#vpcs
module "vpc" {
  source = "./vpc"
}

#billing
module "billing" {
  source = "./billing"
}

#ecs
module "ecs" {
  source = "./ecs"
}