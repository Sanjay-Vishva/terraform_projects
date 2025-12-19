module "ec2" {
  source = "./modules/ec2"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "my-terraform-module-demo-bucket-12345"
}

module "iam" {
  source     = "./modules/iam"
  user_count = 5
}
