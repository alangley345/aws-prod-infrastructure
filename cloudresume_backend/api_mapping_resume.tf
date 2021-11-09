resource "aws_apigatewayv2_api_mapping" "resume" {
  api_id      = var.api_id
  domain_name = var.api_domain
  stage       = aws_apigatewayv2_stage.resume.id
}