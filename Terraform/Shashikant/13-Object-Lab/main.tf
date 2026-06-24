terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "file" {
  filename = "${local.vm_name}.txt"

  content = <<EOF
VM Name: ${local.vm_name}
VM Size: ${local.vm_size}
Disk: ${local.vm_disk} GB
OS Type: ${local.os_type}
EOF
}