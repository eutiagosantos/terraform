terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region

}

resource "aws_instance" "app_server" {
  ami           = "ami-00c257e12d6828491"
  instance_type = var.instance
  key_name      = var.key

  tags = {
    Name = "server"
  }
}

resource "aws_key_pair" "chaveSSH" {
  key_name   = var.key
  public_key = file("${var.key}.pub")

}

output "public_ip" {
  value = aws_instance.app_server.public_ip
}
