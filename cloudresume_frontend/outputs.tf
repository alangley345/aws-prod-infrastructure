output "cloudresume_frontend_secret" {
    value = aws_iam_access_key.cloudresume_frontend.encrypted_secret
}

output "cloudresume_frontend_ID" {
    value = aws_iam_access_key.cloudresume_frontend.id
}

output "cloudfront_resume_distributionID" {
    value = aws_cloudfront_distribution.resume.id
}