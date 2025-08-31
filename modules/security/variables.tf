variable "sg-name" {
  description = "secuirty group name"
  type = string
  default = "CI-sg"
  
}


data "aws_vpc" "vpc" {
  default = true
}

output "default_vpc_id" {
  value = data.aws_vpc.vpc.id
}

variable "ip_address" {
  description = "my IP address"
  type = string

  
}
