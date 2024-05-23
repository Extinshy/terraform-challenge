terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
#Using count on null resource
data "null_data_source" "test_count" {
  count = 3
  inputs = {
    Message_for_every_person = "Hello person ${tostring(count.index)}"
  }
}