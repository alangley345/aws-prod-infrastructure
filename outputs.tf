#pgp public key
output "access_token_signing" {
    value = data.local_file.pgp_key.content
}

#Lambda
output "lambda_bucket_arn" {
    value = module.s3.lambdafunctionstaging_arn
}

output "lambda_bucket_name" {
    value = module.s3.lambdafunctionstaging_id
}

#API
output "api_aaronlangley_id" {
  value = module.api_gateway.api_aaronlangley_id
}

output "api_aaronlangley_arn" {
  value = module.api_gateway.api_aaronlangley_arn
}

output "api_aaronlangley_execution_arn" {
  value = module.api_gateway.api_aaronlangley_execution_arn
}

output "api_aaronlangley_domain_name" {
  value = module.api_gateway.api_aaronlangley_domain_name
}

output "api_aaronlangley_domain_name_id" {
  value = module.api_gateway.api_aaronlangley_domain_name_id
}

output "wildcard_arn" {
  value = module.certificates.wildcard_arn
}

output "aaronlangley_zone_id" {
  value = module.public_dns_zones.aaronlangley_zone_id
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}

#Let's Encrypt User for ACME on Dockerhost
output "le_dockerhost_id" {
  value = module.iam.le_dockerhost_id
}


output "le_proxmox_secret" {
  value = module.iam.le_dockerhost_secret
  sensitive = true
}

#Let's Encrypt User for ACME on pfsense02
output "le_pfsense02_id" {
  value = module.iam.le_pfsense02_id
}

output "le_pfsense02_secret" {
  value = module.iam.le_pfsense02_secret
  sensitive = true
}

#Let's Encrypt User for ACME on pfsense01
output "le_pfsense01_id" {
  value = module.iam.le_pfsense01_id
}

output "le_pfsense01_secret" {
  value = module.iam.le_pfsense01_secret
  sensitive = true
  
}

#Github Actions user for cloudresume-frontend
output "cloudresume_id" {
  value = module.iam.cloudresume_id
}

output "cloudresume_secret" {
   value = module.iam.cloudresume_secret
}
