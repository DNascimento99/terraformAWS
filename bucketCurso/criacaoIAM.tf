resource "aws_iam_user" "user_daniel_testes" {
  name          = var.iam_name
  path          = var.iam_path
  force_destroy = var.iam_force_destroy
  tags          = var.iam_tags
}
resource "aws_iam_access_key" "key_daniel_testes" {
  user = var.iam_name
  depends_on = [
    aws_iam_user.user_daniel_testes
  ]
}