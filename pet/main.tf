variable "length" {
  
}

resource "random_pet" "example" {
    length = var.length

}

output "id" {
    value = random_pet.example.id
  
}