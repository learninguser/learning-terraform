resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_name == "MongoDB" ? "t3.medium" : "t3.micro"
  security_groups = [ aws_security_group.allow_all.name ]

  tags = var.tags
}