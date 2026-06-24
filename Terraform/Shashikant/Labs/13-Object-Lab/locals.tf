locals {
  vm_name   = var.vm_config.name
  vm_size   = var.vm_config.size
  vm_disk   = var.vm_config.disk_gb
  os_type   = var.vm_config.is_linux ? "linux" : "windows"
}