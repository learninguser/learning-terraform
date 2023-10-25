resource "aws_instance" "web" {
  count           = 10
  ami             = var.ami_id
  instance_type   = contains(["MongoDB", "MySQL"], var.instance_names[count.index]) ? "t3.medium" : "t3.micro"
  security_groups = [aws_security_group.allow_all.name]

  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "record" {
  count   = length(var.instance_names)
  zone_id = var.zone_id
  # interpolation
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.web[count.index].private_ip]
}
