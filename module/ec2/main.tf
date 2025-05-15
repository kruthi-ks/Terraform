provider "aws"{
    region="us-east-1"
}

variable "ami_value"{
    description="ami value of an instance"
}
variable "instance_type_value"{
    description="instance value of an instance"
}
resource "aws_instance" "example" {
  ami                     = var.ami_value
  instance_type           = var.instance_type_value
}