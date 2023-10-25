data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["*ubuntu-jammy-22.04-amd64-server*"]
  }
}

data "aws_vpc" "default" {
  default = true
}
