provider "aws" {
	  region = "us-west-2"
	}
resource "aws_instance" "hello_terraform" {
	  ami = "ami-e689729e"
	  instance_type = "t2.micro"
	  user_data = "${file("install_httpd.sh")}"
	  tags = {
	    Name = "Terraform instance"
	    }
}
