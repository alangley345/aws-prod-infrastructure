#route53 hosted dns zones and records
module "public_dns_zones" {
  source = "./public_dns_zones"
}

#buckets used by multiple projects
module "s3" {
  source = "./s3"
}

#cloudresumechallenge frontend
module "cloudresume-frontend" {
  source = "github.com/alangley345/cloudresume-frontend/terraform"
}