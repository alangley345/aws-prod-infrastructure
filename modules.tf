module "public_dns_zones" {
  source = "./public_dns_zones"
}

module "s3" {
  source = "./s3"
}

module "cloudfront" {
  source = "./cloudfront"
}

module "certificates" {
  source = "./certificates"
}
