terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.2.3"
    }
  }
}

provider "local" {
  # Configuration options
}

resource "local_file" "foo" {
    content = "foo!"
    filename = "./foo.bar"
    file_permission = "0770"
}