provider "aws" {
  region = var.region_webserver
}

resource "aws_security_group" "webserver_SG" {
  name = "Webserver_SG"
  description = "security group for webserver instance"
  
#Create rules 
#for outboud rules 
  ingress {
    from_port = 80
    protocol = "TCP"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
 #for SSH connection 
    ingress {
    from_port = 22
    protocol = "TCP"
    to_port = 22
    cidr_blocks = ["49.207.209.69/32"]
  }
 #for outboud rules 
    eggress {
    from_port = 0
    protocol = "TCP"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "webserver_Instance" {
      instance_type = var.type_webserver
      ami = var.ami_webserver
      key_name = "ec2-demo"
      tags = {
        name = "webserver_Instance"
        }
      security_groups = ["${aws_security_group.Webserver_SG.name}"]
}
