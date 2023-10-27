resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = "Allowing All ports"

  ingress {
    description      = "Allowing all inbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform"
  }
}