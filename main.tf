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
  region = "sa-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-015e30624fffff117"
  instance_type = "t2.micro"
  key_name      = "flavio-sp"
#  user_data     = <<-EOF
#                 #!/bin/bash
#                 cd /home/ubuntu
#                 echo "<h2>Teste Busybox 2</h2>" > index.html
#                 nohup busybox httpd -f -p 8080 &
#                 EOF
  tags = {
    Name = "Terraform Ansible Python"
  }
}