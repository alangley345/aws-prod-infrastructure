#used to allow github actions access to s3 bucket.
resource "aws_iam_user_policy" "s3_lambdafunctionstaging_FA" {
  name        = "S3-lambdafunctionstaging-FullAccess"
  user        = aws_iam_user.cloudresume_backend.name
  
  depends_on = [
    aws_iam_user.cloudresume_backend
  ]
  
  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:GetObject",
                "s3:CreateBucket",
                "s3:ListBucket",
                "s3:DeleteObject"
            ],
            "Resource": [
                "${var.lambda_bucket}",
                "${var.lambda_bucket}/*"
            ]
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": "s3:ListAllMyBuckets",
            "Resource": "*"
        }
    ]
})
}