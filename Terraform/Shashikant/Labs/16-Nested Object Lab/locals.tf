locals {
  app_name = var.app.name
  vm_size  = var.app.vm.size
  vm_disk  = var.app.vm.disk
  env_tag  = var.app.tags["env"]
}