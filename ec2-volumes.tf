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
resource "aws_ebs_volume" "example"{
  availability_zone = "us-east-1b"
  size              = 40
}
resource "aws_volume_attachment" "ebs_att"{
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.example.id
  instance_id = aws_instance.firstinstance.id
}
