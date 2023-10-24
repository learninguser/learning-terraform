variable "ami_id" {
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "sg_name" {
  default = "allow-all-1"
}

variable "sg_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}