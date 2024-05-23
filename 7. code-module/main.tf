terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  }
}
module "aws_security_group" {
  source = "./modules/random-security-group"
  random_lenght = 4
}