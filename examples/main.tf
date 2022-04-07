module "connect-instance" {
  source                 = "git::https://github.com/fortunecookiezen/aws-tf-amazon-connect.git?ref=v2.0"
  connect-instance-alias = "demo"
}
