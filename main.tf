module "security" {
    source = "./modules/security"
    ip_address = var.ip_address

}

module "ec2" {
    source = "./modules/ec2"
    sg_id = var.sg_id
    ami_id = var.ami_id
}

