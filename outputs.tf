output "access_token_signing" {
    value = data.local_file.pgp_key.content
}

output "lambda_bucket" {
    value = module.s3.lambdafunctionstaging_arn
}

output "api_aaronlangley_id" {
  value = module.api_gateway.api_aaronlangley_id
}

output "api_aaronlangley_domain_name" {
  value = module.api_gateway.api_aaronlangley_domain_name
}