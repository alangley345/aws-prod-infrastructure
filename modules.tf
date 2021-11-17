#route53 hosted dns zones and records
module "public_dns_zones" {
  source = "./public_dns_zones"
}

#certificates for AWS resources
module "certificates" {
  source = "./certificates"

  aaronlangley_zone = module.public_dns_zones.aaronlangley_zone_id
}

#resources specifically related to front of resume page
module "cloudresume_frontend" {
  source = "./cloudresume_frontend"
  
  cf_cert   = module.certificates.wildcard_arn
  rt53_zone = module.public_dns_zones.aaronlangley_zone_id
  pgp_key   = data.local_file.pgp_key.content
}

#resources specifically related to backend of resume page
module "cloudresume_backend" {
  source = "./cloudresume_backend"

  api_id        = module.api_gateway.api_aaronlangley_id
  api_domain    = module.api_gateway.api_aaronlangley_domain_name
  pgp_key       = data.local_file.pgp_key.content
  lambda_bucket = module.s3.lambdafunctionstaging_arn
}

#api gateways shared across domains
module "api_gateway" {
  source = "./api_gateway"

  gw_cert   = module.certificates.wildcard_arn
  rt53_zone = module.public_dns_zones.aaronlangley_zone_id
}

module "s3" {
 source = "./s3"
}