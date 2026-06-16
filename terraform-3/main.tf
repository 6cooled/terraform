provider "aws"{
    region="us-east-1"
}


resource "aws_instance" "example" {
    instance_type="t3.micro"
    ami="ami-0521cb2d60cfbb1a6"
    subnet_id="subnet-09b989a7169529516"
  
}


resource "aws_s3_bucket" "s3_bucket" {
    bucket = "terraform-sairam-demo-123456"
  
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform_lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type= "5"
    }
  
}
