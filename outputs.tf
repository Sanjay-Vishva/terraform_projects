output "ec2_details" {
  value = {
    instance_id = module.ec2.instance_id
    public_ip   = module.ec2.public_ip
    public_dns  = module.ec2.public_dns
  }
}

output "iam_users_passwords" {
  value     = module.iam.iam_user_credentials
  sensitive = true
}
