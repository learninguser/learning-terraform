resource "aws_security_group" "allow_http_ssh" {
  name        = var.sg_name
  description = "Allowing All ports"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTP from our VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr
  }

  ingress {
    description = "HTTPS from our VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr
  }

  ingress {
    description = "SSH from our laptop"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["92.206.202.187/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "allow_http_ssh"
    Terraform   = true
    Environment = "Dev"
  }
}
