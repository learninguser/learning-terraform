# This is the default tfvars file that terraform looks for
# In this case, we don't need to explicity pass the tfvars file in the -var-file argument
# This also enables us to select the default environment that we would like to work on
# Here we are selecting DEV as our default environment
# .tfvars file is not tracked by GIT as the user provides his values for the variables

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