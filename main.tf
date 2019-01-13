resource "random_pet" "memorable" {
  keepers = "${var.keepers}"

  # Length in words to generate, will cause an error if output length 
  # is >${var.length}
  length = "${var.memorable_length}"

  separator = "${var.memorable_separator}"
}

resource "random_string" "id" {
  keepers = "${var.keepers}"

  # Remaining length after the memorable prefix is added
  length           = "${var.length - length("${random_pet.memorable.id}${var.separator}")}"
  override_special = "${var.id_characters}"

  # Forcing explicit definition of character set
  lower  = false
  upper  = false
  number = false
}
