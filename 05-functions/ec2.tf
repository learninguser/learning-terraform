resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = file("devops.pub")
}

resource "aws_instance" "web" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.allow_all.name]

  tags = {
    Name      = "test",
    Terraform = true
  }
}
