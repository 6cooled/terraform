terraform {
  backend "s3" {
    bucket = "terraform-sairam-demo-123456"
    key    = "s3/terraform.tfstate"
    region = "us-east-1"
  }
}
