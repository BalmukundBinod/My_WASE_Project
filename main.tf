provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "hello_terraform" {
  ami = "ami-062f782c5c05090ae"
  instance_type = "t2.micro"
}
