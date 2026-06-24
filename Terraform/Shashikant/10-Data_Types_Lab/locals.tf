locals {
  name = "${var.env}-app"
  message = "Environment: ${var.env}, Prod Mode: ${var.is_prod}"
}