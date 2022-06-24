provider "aws" {
  profile    = "terraform-user-aman"
  access_key = "   "
  secret_key = "  "
  region     = "ap-southeast-1"
}
resource "aws_instance" "linux" {
  ami = "ami-0c802847a7dd848c0"
  tags = {
    Name = "linux-amazon"
  }
  instance_type = "t2.nano"
  count         = 5

  key_name = "linux-terraform"
}
