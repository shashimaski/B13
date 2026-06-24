locals {
  project_name = "terraform-demo"

  resource_name = "${var.env}-${local.project_name}"
}