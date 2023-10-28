module "ec2" {
  source        = "../module-ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
}
