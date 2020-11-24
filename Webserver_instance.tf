provider "aws" {
	  region = "us-east-2"
	}
resource "aws_instance" "hello_terraform" {
	  ami = "ami-062f78fda82ba540f"
	  instance_type = "t2.micro"
	  user_data = "${file("install_httpd.sh")}"
	  tags = {
	    Name = "Terraform instance"
	    }
}
