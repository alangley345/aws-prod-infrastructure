output "lambdafunctionstaging_arn" {
    value = aws_s3_bucket.lamdba_functions.arn
}

output "lambdafunctionstaging_name" {
    value = aws_s3_bucket.lamdba_functions.id
}
