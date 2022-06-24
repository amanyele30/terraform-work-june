# cretaing web server with help of script in aws
provider "aws" {
  profile    = "terraform-user-aman"
  access_key = "AKIA5UZYIXYDRQGSBTWQ"
  secret_key = "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"
  region     = "ap-southeast-1"
}
 resource  "aws_s3_bucket"  "bucket"  {
    bucket = "my-tf-test-bucket-123-hari-krishna"
    tags = {
      Name       = "my bucket"
      Envirnment = "test"
    }
  }





