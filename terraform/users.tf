resource "aws_iam_user" "test_role" {
  name = "test_user"
}

resource "aws_iam_user_policy" "test_s3" {
  name = "test"
  user = aws_iam_user.test_role.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
          "s3-object-lambda:*"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}