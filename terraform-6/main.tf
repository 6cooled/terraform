provider "aws" {
    region = "us-east-1"
  
}

variable "ami" {
    description = "this is ami type"  
}

variable "instance_type" {
       description = "value"
       type = map(string)

       default = {
         "dev" = "t3.micro"
         "prod" = "t3.small"
         "test" ="t2.micro"
       }
}

module "instance" {
    source = "./module"
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace, "t3.micro")
  
}