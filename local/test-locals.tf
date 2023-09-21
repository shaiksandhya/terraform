# resource "aws_instance" "conditions" {
    # count = 10
#   ami = local.ami_id #devops-practice in us-east-1
#   instance_type = var.instance_name[count.index] == "mongoDB" || var.instance_name[count.index] == "mysql" ? "t3.medium" : "t2.micro"
#   tags = {
    # Name = var.instance_name[count.index]
#   }
# }
# 
# resource "aws_route53_record" "record" {
    # count = 10
#   zone_id = var.zone_id
#   name    = "${var.instance_name[count.index]}.${var.domain}"  #interpolation
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.conditions[count.index].private_ip]
# }


resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = local.key_public
}

resource "aws_instance" "files" {
  ami = local.ami_id #devops-practice in us-east-1
  instance_type = local.instance_type
    key_name = aws_key_pair.deployer.key_name
}

# MONGODB CART MYSQL RABBITMQ CATALOGUE USER WEB REDIS SHIPPING PAYMENT