variable "instance_type" {
  default = "t2.micro"
}

variable "sg_name" {
  default = "allow-all-1"
}

variable "sg_cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "MongoDB"
    Environment = "DEV"
    Terraform   = "true"
    Project     = "Roboshop"
    Component   = "MongoDB"
  }
}

variable "is_prod" {
  default = false
}