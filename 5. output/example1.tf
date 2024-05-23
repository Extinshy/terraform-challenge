terraform {
}
#Using random pet provider 
resource "random_pet" "server" {
  length = 4
  prefix = "tovaetest"
}
#Using output
output "random_pet" {
  value = random_pet.server.id
} 