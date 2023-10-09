terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    region         = "eu-north-1"
    bucket         = "htc-demo-27-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "htc-demo-27-terraform-state-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}
