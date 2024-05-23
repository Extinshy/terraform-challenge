terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
}
resource "random_pet" "server" {
  length = 1
}
resource "aws_s3_bucket" "example" {
  for_each = var.bucketname
  bucket   = "${each.value}${random_pet.server.id}"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}