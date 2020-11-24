provider "aws" {
	  region = "${var.region}"
	}
resource "aws_instance" "hello_terraform" {
	  ami = "${var.ami}"
	  instance_type = "${var.instance_type}"
	  user_data = "${file("install_httpd.sh")}"
	  tags = {
	    Name = "Terraform instance"
	    }
}
