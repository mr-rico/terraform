provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "helloworld" {
  ami           =   "ami-06640050dc3f556bb"
  instance_type =   "t2.micro"
  tags          = {
    Name = "rrandall-testec2"
  }
}
