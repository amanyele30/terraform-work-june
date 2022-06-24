# cretaing web server with help of script in aws
provider "aws" {
  profile    = "terraform-user-aman"
  access_key = " "
  secret_key = "  "
  region     = "ap-southeast-1"
}
# aws instance creation
resource "aws_instance" "linux" {
  ami             = "ami-0c802847a7dd848c0"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.allow_ssh_http.name}"]
  tags = {
    Name = "linux-web-instance"
  }
  key_name = "linux-terraform"

  # userdata script in aws to active webserver
  user_data = file("script.sh")
}

resource "aws_security_group" "allow_ssh_http" {
  tags = {
    Name = "Allow_SSH_HTTP"
  }
  name        = "allow_ssh_http"
  description = "allow ssh and http traffic"

  ingress {
    description      = "allow ssh from vpc"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "allow http from vpc"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}





