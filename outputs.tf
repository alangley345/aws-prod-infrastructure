output "access_token_signing" {
    value = data.local_file.pgp_key
}

output "lambda_bucket" {
    value = module.s3.lambdafunctionstaging_arn
}

