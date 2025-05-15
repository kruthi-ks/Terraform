provider "aws"{
    region="us-east-1"
}

variable "ami_value"{
    description="ami value of an instance"
}
variable "instance_type_value"{
    description="instance value of an instance"
}
module "ec2_instance" {
    source = "./module/ec2"
    ami_value= var.ami_value
    instance_type_value= var.instance_type_value
}
