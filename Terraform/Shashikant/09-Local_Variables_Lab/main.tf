terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "file" {
  filename = "${local.resource_name}.txt"
  content  = "Environment: ${var.env}, Region: ${var.region}"
}