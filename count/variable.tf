variable "ami_id" {
    type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_name" {
    type = list
  default = ["mongoDB", "cart", "user", "catalogue", "mysql", "rabbitmq", "reddis", "payment", "shipping", "web"]
}

variable "zone_id" {
    default = "Z10349223ITYKMMGXG5OP"
}

variable "domain" {
    default = "sandydevops.online"
  
}