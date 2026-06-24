locals {
  app_name    = var.app_config[0]
  replicas    = var.app_config[1]
  is_enabled  = var.app_config[2]
}