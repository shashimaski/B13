resource "local_file" "file1" {
  filename = var.filename
  content  = var.content
}

# LAB 02: VARIABLES
# -----------------
# This lab teaches how to pass dynamic values into Terraform.

# What happens:
# Instead of hardcoding values, we use variables.

# Example:
# var.filename → value comes from variables.tf or tfvars

# Why we need this:
# Real projects change values often (file names, regions, etc.)
# We should NOT change code every time.

# What we learned:
# - input variables (var.xyz)
# - output variables
# - local variables
# - how Terraform accepts external values