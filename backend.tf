terraform {
  backend "s3" {
    bucket = "apps-terraform-clusters"
    key    = "eks-blockscout/terraform.tfstate"
    region = "eu-central-1"
  }
}
