variable "length" {
  description = "(Required) The length of the string to generate in number of characters"
}

variable "keepers" {
  description = "(Optional) (default {}) Arbitrary map of values that, when changed, will trigger a new id to be generated. See the Random provider documentation for more information"
  default     = {}
  type        = "map"
}

variable "id_characters" {
  description = "(Optional) (default a-z0-9) The character set used to generate the id segment, e.g. \"abcdef0123456789\" would produce a hex string."
  default     = "abcdefghijklmnopqrstwxyz0123456789"
}

variable "separator" {
  description = "(Optional) (default \"-\") The character used to separate the memorable and id segments."
  default     = "-"
}

variable "memorable_length" {
  description = "(Optional) (default 2) The number of words in the memorable segment."
  default     = "2"
}

variable "memorable_separator" {
  description = "(Optional) (default \"-\") The character used to separate words in the memorable segment."
  default     = "-"
}
