provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "awesome" {
  instance_type = "t2.micro"
  ami = "ami-083602cee93914c0c"
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  tags = {
    Name = "Awesome-VM"
  }
}
