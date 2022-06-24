provider "aws" {
  profile    = "terraform-user-aman"
  access_key = "  "
  secret_key = "  "
  region     = "ap-southeast-1"

}
resource "aws_instance" "windows" {
  ami = "ami-0a3b4727d922f5e42"
  tags = {
    Name = "singpw"
  }
  instance_type = "t2.micro"
  key_name      = "terraform-window"
}

resource "aws_instance" "linux" {
  ami = "ami-057f7e34dc12e5ca5"
  tags = {
    Name = "linux-instance"
  }
  instance_type = "t2.micro"
  key_name      = "linux-terraform"
}

