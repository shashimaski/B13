variable "vm_config" {
  type = object({
    name     = string
    size     = string
    disk_gb  = number
    is_linux = bool
  })

  default = {
    name     = "app-server"
    size     = "Standard_B1s"
    disk_gb  = 30
    is_linux = true
  }
}