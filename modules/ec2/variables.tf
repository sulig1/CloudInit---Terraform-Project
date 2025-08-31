variable "ami_id" {
    description = "AMI id"
    type = string
  
}

variable "instance_type" {
    description = "instance type"
    type = string
    default = "t2.micro"
  
}

variable "key_name" {
    description = "key pair name"
    type = string
    default = "Terraform-kp"
  
}

variable "sg_id" {
    description = "security group id"
    type = string
  
}

variable "tag-name" {
    description = "sg name"
    type = string
    default = "CloudInit"
  
}

output "ec2_ip" {
    value = aws_instance.CI.public_ip
  
}
