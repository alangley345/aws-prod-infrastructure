resource "aws_budgets_budget" "aws-monthly-lab-budget" {
  name         = "AWS Monthly Lab Budget"
  budget_type  = "COST"
  limit_amount = "5"
  limit_unit   = "USD"
  time_unit    = "MONTHLY"

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 90
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["alangley345@gmail.com"]
  }
}