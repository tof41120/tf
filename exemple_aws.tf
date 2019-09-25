terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tfcloud"

    workspaces {
      name = "tf"
    }
  }
}



provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "example" {
  // ami           = "ami-2757f631"
  ami = "ami-04df694a94ac0b1b5"
  instance_type = "t2.micro"

  tags = {
    Name  = "terraform-example"
    Group = "terraform"
  }
}