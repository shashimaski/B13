locals {
  first_region = var.regions[0]
  all_regions  = join(",", var.regions)
}