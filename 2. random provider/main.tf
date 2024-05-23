terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  }
}
#Using random provider
resource "random_id" "test" {
  byte_length = 8
}
#Using output
output "random" {
  value = random_id.test.id
}