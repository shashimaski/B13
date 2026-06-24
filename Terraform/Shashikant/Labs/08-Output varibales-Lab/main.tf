#############################################
# WHAT:
# Creates a local file using variables

# WHY:
# To demonstrate how input values are used in real resources

# HOW:
# Terraform takes var.filename + var.content and creates file

# REAL CASE:
# - create config files
# - generate logs
# - deploy templates
#############################################

resource "local_file" "file1" {
  filename = var.filename
  content  = var.content
}