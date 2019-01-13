# Random Memorable Id Module

This repo contains a Module for generating a random id that is both memorable
and as long as is allowable by length constraints. This could be used, for
example, to create a project id for Google Cloud.

## Features

The output from this module can be customized in a variety of ways:

- `keepers` can be used to force regeneration
- the characters used for padding and separation can each be customized
- as can the length, in words, of the memorable segment

## Usage

Usage is exceptionally simple, please read the simple example below to
understand the usage and refer to the Inputs/Outputs documentation for a more
detailed description.

``` hcl
module "totally_rad_project_id" {
  # Module path
  source = "DanielFallon/memorable-id/random"

  # Maximum length of a google cloud project id
  length = 30
}

resource "google_project" "totall_rad" {
  name = "${totally_rad_project_id.memorable}"
  project_id = "${totally_rad_project_id.memorable_id}"
  # insert the remaining arguments here
}
```

## Examples

    #TODO: create some examples to be used for testing the module

## Authors

This module is managed by [Daniel Fallon](https://github.com/DanielFallon)

## License

Apache 2 Licensed. See LICENSE for full details.