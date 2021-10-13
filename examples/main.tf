module "connect-instance" {
  source                 = "git::https://github.com/fortunecookiezen/aws-tf-amazon-connect.git"
  connect-instance-alias = "demo"
}
