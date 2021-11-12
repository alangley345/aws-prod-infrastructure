output "test_secret" {
    value = module.cloudresume_frontend.aws_iam_access_key.test.test_secret
}