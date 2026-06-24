#############################################
# OUTPUT VARIABLES LAB
#############################################

# WHAT IS OUTPUT?
# Output variables show results after terraform apply

# WHY DO WE NEED IT?
# - To see created resource details
# - To pass values to other modules
# - To use in CI/CD pipelines
# - To debug infrastructure

# HOW IT WORKS?
# Terraform reads resource attributes from state file
# and prints them after execution

# REAL DEVOPS USE CASES:
# - VM public IP
# - S3 bucket name
# - Resource ID
# - DNS name

#############################################

output "file_id" {
  value = local_file.file1.id
}

output "file_name" {
  value = local_file.file1.filename
}

output "file_content" {
  value = local_file.file1.content
}
#OUTPUT VARIABLES = Terraform’s way of showing final results after execution
