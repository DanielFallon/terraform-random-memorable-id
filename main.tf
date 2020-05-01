terraform {
  required_version = ">=0.12.0"
}

resource "random_pet" "memorable" {
  keepers = var.keepers

  # Length in words to generate, will cause an error if output length 
  # is >${var.length}
  length = var.memorable_length

  separator = var.memorable_separator
}

locals {
  id_length = var.length - length("${random_pet.memorable.id}${var.separator}")
  id_length_error = regex((local.id_length <= 0 ) ? "(INTENTIONALLY RAISE ERROR":"","Generated memorable name (`${random_pet.memorable.id}${var.separator}`) is longer than the requested length (${var.length}). Try again or increase length.")
}

resource "random_string" "id" {
  keepers = var.keepers

  # Remaining length after the memorable prefix is added
  length           = local.id_length
  override_special = var.id_characters

  # Forcing explicit definition of character set
  lower  = false
  upper  = false
  number = false
}
