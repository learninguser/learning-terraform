locals {
  public_key = file("devops.pub")
  instance_type = var.is_prod ? "t3.medium" : "t3.micro"
}
