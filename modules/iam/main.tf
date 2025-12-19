resource "aws_iam_user" "users" {
  count = var.user_count
  name  = "terraform-user-${count.index + 1}"
}

resource "aws_iam_user_login_profile" "users" {
  count                   = var.user_count
  user                    = aws_iam_user.users[count.index].name
  password_reset_required = true
}
