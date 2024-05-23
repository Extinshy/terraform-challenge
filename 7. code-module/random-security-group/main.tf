terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  }
}
resource "random_pet" "server" {
  length = var.random_lenght
  prefix = "MODULE"
}
resource "aws_security_group" "allow_tls" {
  name        = random_pet.server.id
}