terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "file" {
  filename = "${local.app_name}.txt"

  content = "Replicas: ${local.replicas}, Enabled: ${local.is_enabled}"
}