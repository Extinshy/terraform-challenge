terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}
provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}
resource "aws_vpc_ipam" "test" {
  provider = aws.us-east-1
  operating_regions {
    region_name = "us-east-1"
  }
}
resource "aws_vpc_ipam" "test2" {
  provider = aws.us-east-2
  operating_regions {
    region_name = "us-east-2"
  }
}