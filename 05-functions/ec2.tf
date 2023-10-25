resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = file("devops.pub")
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name      = "test",
    Terraform = true
  }
}
