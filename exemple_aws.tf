provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"

  tags = {
    Name  = "terraform-example"
    Group = "terraform"
  }
}

#resource "aws_autoscaling_group" "web" {
# (resource arguments)
#}
