resource "aws_apigatewayv2_stage" "resume" {
  api_id = var.api_id
  name   = "resume"
}