variable "sg_name" {
  default = "allow_http_ssh"
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]
}

variable "ami_id" {
  default = "ami-03265a0778a880afb"
}

variable "zone_id" {
  default = "Z09747631QFAA460NOQBW"
}

variable "domain_name" {
  default = "learninguser.online"
}

variable "instances" {
  type = map(any)
  default = {
    Web = "t2.micro"
  }
}
