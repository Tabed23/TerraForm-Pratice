provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "firstinstance" {
   ami = "" #instance id
   instance_type = "t2.micro"
   tags = {
    Name = "test"
    environment = "dev"
   }
}
