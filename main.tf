provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "awesome" {
  instance_type = "t2.micro"
  ami = "ami-083602cee93914c0c"
  tags = {
    Name = "Awesome-VM"
  }
}
