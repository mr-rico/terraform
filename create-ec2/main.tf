provider "aws" {
region = "us-east-1"
}

data "aws_ami" "redhat" {
  most_recent = true
  
  filter {
    name = "name"
    //values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    values = ["RHEL-8.6.0_HVM-20220503-x86_64-2-Hourly2-GP2"]
  }
}
resource "aws_instance" "helloworld" {
  ami           =   data.aws_ami.redhat.id
  instance_type =   "t2.micro"
  tags          = {
    Name = "rrandall-ec2"
  }
}
