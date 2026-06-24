terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "file" {
  filename = "${local.app_name}.txt"

  content = <<EOF
App: ${local.app_name}
VM Size: ${local.vm_size}
Disk: ${local.vm_disk}
Environment: ${local.env_tag}
EOF
}