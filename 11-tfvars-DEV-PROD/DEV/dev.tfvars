# Values for the variables that need to be assigned
# In this we don't need to define a variable 
# Rather we should only declare its value

instances = {
  MongoDB-DEV   = "t3.medium"
  MySQL-DEV     = "t3.medium"
  Redis-DEV     = "t3.micro"
  RabbitMQ-DEV  = "t3.micro"
  Catalogue-DEV = "t3.micro"
  User-DEV      = "t3.micro"
  Cart-DEV      = "t3.micro"
  Shipping-DEV  = "t3.micro"
  Payment-DEV   = "t3.micro"
  Web-DEV       = "t3.micro"
}


sg_name = "allow-all-DEV"
