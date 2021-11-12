output "test_secret" {
    value = aws_iam_access_key.test.encrypted_secret
}