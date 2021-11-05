resource "aws_apigatewayv2_domain_name" "resume" {
  domain_name = "ws-api.example.com"

  domain_name_configuration {
    certificate_arn = var.
    endpoint_type   = "REGIONAL"
    security_policy = "TLS_1_2"
  }
}