variable "ami_id" {
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_names" {
  type = list(any)
  default = [
    "Web",
    "MongoDB",
    "Catalogue",
    "Redis",
    "User",
    "Cart",
    "MySQL",
    "Shipping",
    "RabbitMQ",
    "Payment",
    "Dispatch"
  ]
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
