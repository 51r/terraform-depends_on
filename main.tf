resource "random_integer" "gen" {
  min = 1
  max = 3

}

module "pet" {
  source = "./pet"
  length = random_integer.gen.result
  depends_on = [
    random_integer.gen
  ]

}

output "integer" {
  value = random_integer.gen.result

}

output "name" {
    value = module.pet.id
  
}