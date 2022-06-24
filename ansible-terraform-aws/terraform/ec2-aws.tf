# Configure the AWS Provider and resource
provider "aws" {
  region     = "us-east-1"
  access_key = "your_access_key_here"
  secret_key = "your_secret_key_here"
}

resource "aws_instance" "terraform_ec2_001" {
  ami = "ami-062f7200baf2fa504"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform EC2"
  }
}
