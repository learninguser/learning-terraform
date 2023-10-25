output "ami_id" {
  value = data.aws_ami.ubuntu.id
}

output "name" {
  value = data.aws_ami.ubuntu.name
}

output "vpc_info" {
  value = data.aws_vpc.default
}