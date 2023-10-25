resource "aws_instance" "web" {
  count           = 10
  ami             = var.ami_id
  instance_type   = contains(["MongoDB", "MySQL"], var.instance_names[count.index]) ? "t3.medium" : "t3.micro"
  security_groups = [aws_security_group.allow_all.name]

  tags = {
    Name = var.instance_names[count.index]
  }
}