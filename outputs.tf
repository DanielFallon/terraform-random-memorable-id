output "memorable" {
  description = "The memorable segment of the generated id (without separator appended)"
  value       = "${random_pet.memorable.id}"
}

output "id" {
  description = "The id segement of the generated id (without separator prefixed)"
  value       = "${random_string.id.result}"
}

output "memorable_id" {
  description = "The generated id of the form {memorable}{separator}{id}, e.g. silly-tiger-ph84dqd3"
  value       = "${random_pet.memorable.id}${var.separator}${random_string.id.result}"
}
