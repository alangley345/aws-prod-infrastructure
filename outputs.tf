output "access_token_signing" {
    value = data.local_file.pgp_key.content
}

#Lambda
output "lambda_bucket_arn" {
    value = module.s3.lambdafunctionstaging_arn
}

output "lambda_bucket_name" {
    value = module.s3.lambdafunctionstaging_name
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

output "le_proxmox_id" {
  value = module.iam.le_proxmox_id
}


output "le_proxmox_secret" {
  value = module.iam.le_proxmox_secret
  sensitive = true
}

output "le_pfsense02_id" {
  value = module.iam.le_pfsense02_id
}

output "le_pfsense02_secret" {
  value = module.iam.le_pfsense02_secret
  sensitive = true
}
