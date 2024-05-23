terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}
resource "random_pet" "server" {
  length = 2
}
provider "aws" {
  region = var.region_name
}
provider "aws" {
  alias = "zdravei"
  region = var.region_name
}
resource "aws_s3_bucket" "example" {
  bucket = random_pet.server.id

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}