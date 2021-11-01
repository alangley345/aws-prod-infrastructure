output "cf_resume_domain" {
      description = "IDs of the VPC's public subnets"  
      value       = module.cloudresume-frontend.cloudfront_domain_name
}