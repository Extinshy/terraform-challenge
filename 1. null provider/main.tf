terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
#Using null provider
resource "null_resource" "test" {
}