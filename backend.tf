terraform {
  backend "s3" {
    bucket = "apps-terraform"
    key    = "eks-blockscout/terraform.tfstate"
    region = "eu-west-1"
  }
}
