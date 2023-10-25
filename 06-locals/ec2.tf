resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = local.public_key
}

resource "aws_instance" "web" {
  ami             = local.ami_id
  instance_type   = local.instance_type
  security_groups = [aws_security_group.allow_all.name]
  key_name        = aws_key_pair.deployer.key_name

  tags = var.tags
}
