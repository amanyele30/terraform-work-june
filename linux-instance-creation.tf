provider "aws" {
  profile    = "terraform-user-aman"
  access_key = "AKIA5UZYIXYDRQGSBTWQ"
  secret_key = "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"
  region     = "ap-southeast-1"
}
resource "aws_instance" "linux" {
  ami = "ami-057f7e34dc12e5ca5"
  tags = {
    Name = "linux-instance"
  }
  instance_type = "t2.micro"
  key_name      = "linux-terraform"
}
