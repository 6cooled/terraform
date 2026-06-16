provider "aws"{
    region = "us-east-1"
}

# module "ec2_instance" {
#     module="./module/ec2_instance"
#     ami_value="ami-0521cb2d60cfbb1a6"
#     instance_type_value="t3.small"
#     subnet_id_value="subnet-0bbac82492de59c91"
  
# }