locals {
  ami_id = "ami-03265a0778a880afb"
  public_key = file("devops.pub")
  instance_type = var.is_prod ? "t3.medium" : "t3.micro"
}
