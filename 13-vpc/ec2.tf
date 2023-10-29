resource "aws_instance" "roboshop" {
  for_each                    = var.instances
  ami                         = var.ami_id
  instance_type               = each.value
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.allow_http_ssh.id]
  associate_public_ip_address = true

  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop
  zone_id  = var.zone_id
  name     = "${each.key}.${var.domain_name}"
  type     = "A"
  ttl      = 1
  records  = [each.key == "Web" ? each.value.public_ip : each.value.private_ip]
}
