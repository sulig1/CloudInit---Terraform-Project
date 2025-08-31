resource "aws_security_group" "CloudInit-sg" {
  name        = "cloudinit-sg"
  description = "Allows hhtp and SSh (my IP traffic "
  vpc_id      =   data.aws_vpc.vpc.id


  


  ingress {
    description      = "Allows http traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    description      = "Allows SSH from my IP"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.ip_address] 
  }

  egress { 
    from_port        = 0
    to_port          = 0
    protocol         = "-1" 
    cidr_blocks      = ["0.0.0.0/0"]
   
  }


  tags = {
    Name = var.sg-name
  }
}
