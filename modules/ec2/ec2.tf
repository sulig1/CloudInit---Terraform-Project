resource "aws_instance" "CI" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  associate_public_ip_address = true
  vpc_security_group_ids  = [var.sg_id]
  user_data = file("docker.yml")

  tags = {
    Name = var.tag-name
  }
}
