
provider "aws" {

 region = "us-west-2" 
}

resource "aws_vpc" "us_west_vpc" {
 cidr_block = "your subnet/"
 tags = {
    Name = " your vpc name"
  } 
}

resource "aws_subnet" "us_west_subnet" {
 
  vpc_id = aws_vpc.us_west_vpc.id
  cidr_block = "your subnet/"
  tags = {
   Name = "your subnet name"

   }  
 
}
resource "aws_instance" "you instance name"{
 ami = "your instance id"
 instance_type = "t2.micro"
 subnet_id = aws_subnet.us_west_subnet.id
 tags = {
   Name = "example" 
  
   } 
}
