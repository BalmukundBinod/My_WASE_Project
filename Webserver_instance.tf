provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "hello_terraform" {
  ami = "ami-062f7200baf2fa504"
  instance_type = "t2.micro"
}
