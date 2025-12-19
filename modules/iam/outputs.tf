output "iam_user_credentials" {
  value = {
    for i in range(var.user_count) :
    aws_iam_user.users[i].name => aws_iam_user_login_profile.users[i].password
  }
  sensitive = true
}
