#resource "aws_instance" "my_wish_i_can_decide" {
  #  ami_id = var.ami_id # what is the AMI ID you want
 # instance_type = var.instance_type # what is the instance type you want
#}

resource "aws_instance" "my-wish-i-can-decide" {
    ami = var.ami_id #devops-practice in us-east-1
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]

    # tags = {
      # Name = "MONGODB"
      # Environment = "DEV"
      # Terraform = "true"
      # Project = "Roboshop"
      # Component = "MONGODB"
    # }

    tags = var.tags
}