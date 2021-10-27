#route53 hosted dns zones and records
module "public_dns_zones" {
  source = "./public_dns_zones"
}

#s3 buckets and policies
module "s3" {
  source = "./s3"
}

#cloudfront distributions
#module "cloudfront" {
# source = "./cloudfront"
#}

