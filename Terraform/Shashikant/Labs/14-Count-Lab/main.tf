terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "file" {
  count = 3

  filename = "file-${count.index}.txt"

  content = "This is file number ${count.index}"
}