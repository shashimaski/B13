terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "file" {
  filename = "tags.txt"

  content = <<EOF
Environment: ${var.tags["environment"]}
Project: ${var.tags["project"]}
Owner: ${var.tags["owner"]}
EOF
}