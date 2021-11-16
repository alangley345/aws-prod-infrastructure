output "cloudresume_backend_secret" {
    value = aws_iam_access_key.cloudresume_backend.encrypted_secret
}

output "cloudresume_backend_ID" {
    value = aws_iam_access_key.cloudresume_backend.id