provider "aws" {
  profile    = "terraform-user-aman"
  access_key = " "
  secret_key = ""
  region     = "ap-southeast-1"
}
resource "aws_instance" "windows" {
  ami = "ami-0a3b4727d922f5e42"
  tags = {
    Name = "singpw"
  }
  instance_type = "t2.micro"

  key_name = "terraform-window"
}

resource "aws_security_group" "allow_rdp" {
  name        = "allow_rdp"
  description = "allow rdp traffic"
  ingress {
    from_port   = 3389 # by default window listen to tcp port 3389 from rdp
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
