output "public_ip" {
  value = aws_instance.roboshop["Web"].public_ip
}