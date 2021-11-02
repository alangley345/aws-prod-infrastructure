resource "aws_s3_bucket_policy" "resume" {
  bucket = aws_s3_bucket.resume.id
  policy = jsonencode({

       "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::resume.aaronlangley.net/*"
        },
        {
            "Sid": "2",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity EH8JBVD3PCCAH"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::resume.aaronlangley.net/*"
        }
    ]

  })

  depends_on = [aws_s3_bucket.resume]
   
}