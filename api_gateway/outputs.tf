output "api_aaronlangley_id" {
  value = aws_apigatewayv2_api.my_domain.id
}

output "api_aaronlangley_domain_name" {
  value = aws_apigatewayv2_domain_name.aaronlangley.domain_name
}

output "api_aaronlangley_arn" {
  value = aws_apigatewayv2_api.my_domain.arn
}

output "api_aaronlangley_execution_arn" {
  value = aws_apigatewayv2_api.my_domain.execution_arn
}