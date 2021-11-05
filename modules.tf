#route53 hosted dns zones and records
module "public_dns_zones" {
  source = "./public_dns_zones"
}

module "certificates" {
  source = "./certificates"

  aaronlangley_zone = module.public_dns_zones.aaronlangley_zone_id
}

#resources specifically related to front of resume page
module "cloudresume_frontend" {
  source = "./cloudresume_frontend"
  
  cf_cert   = module.certificates.wildcard_arn
  rt53_zone = module.public_dns_zones.aaronlangley_zone_id
}

#resources specifically related to backend of resume page
module "cloudresume_backend" {
  source = "./cloudresume_backend"

  gw_cert   = module.certificates.wildcard_arn
  rt53_zone = module.public_dns_zones.aaronlangley_zone_id
}

module "api_gateway" {
  source = "./api_gateway"

  gw_cert   = module.certificates.wildcard_arn
  rt53_zone = module.public_dns_zones.aaronlangley_zone_id
}