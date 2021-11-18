output "access_token_signing" {
    value = data.local_file.pgp_key
}

output "lambda_bucket" {
    value = aws_s3_bucket.lambdafunctionstaging_arn
}

