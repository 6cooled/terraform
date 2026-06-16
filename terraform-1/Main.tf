provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0521cb2d60cfbb1a6"  # Specify an appropriate AMI ID
    instance_type = "t3.micro"
    subnet_id = "subnet-03ff12c2bf2f18855"
    key_name = "ec2_login"

}