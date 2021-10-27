#s3 buckets and policies
module "s3" {
  source = "../s3"
  bucket_domain_name = module.s3.resume_bucket_domain_name
}