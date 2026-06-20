provider "aws" {
    region = "us-east-1"
  
}

variable "ami" {
    description = "this is ami type"  
}

variable "instance_type" {
       description = "this is a instance_type"
}

resource "aws_instance" "instant" {
    ami=var.ami
    instance_type = var.instance_type
}