resource "aws_iam_user_policy" "policy_daniel_testes" {
  name = var.policy_name
  user = var.iam_name
  depends_on = [
    aws_iam_user.user_daniel_testes
  ]
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}