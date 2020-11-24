provider "aws" {
	  region = "us-east-2"
	}
resource "aws_instance" "hello_terraform" {
	  ami = "ami-062f78fda82ba540f"
	  instance_type = "t2.micro"
	  user_data = << EOF 
		#! /bin/bash
		yum install httpd -y 
		service httpd start
		chkconfig httpd on 	
	  EOF
	  tags = {
	    Name = "Terraform instance"
	    }
}
