terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "file" {
  filename = "${local.name}.txt"
  content  = local.message
}

#############################################
# TERRAFORM PROVIDER
# WHAT: Defines which plugin Terraform uses
# WHY: Terraform alone cannot create resources
# HOW: Downloads provider from registry
# REAL DEVOPS: Every infra tool (Azure/AWS/local) needs a provider
#############################################


# LOCAL FILE RESOURCE
# WHAT: Creates a file on your local machine
# WHY: Simulates infrastructure without cloud
# HOW: Terraform writes file during apply
# REAL DEVOPS: Used in scripts, config generation, CI/CD artifacts
#############################################

#resource "local_file" "file" {
  
  ###########################################
  # FILENAME
  # WHAT: Name of file to create
  # WHY: Defines output artifact name
  # HOW: Uses variable-based naming
  # REAL DEVOPS: Naming conventions (env-app-name)
  ###########################################
 #filename = "${local.name}.txt"

  ###########################################
  # CONTENT
  # WHAT: Data inside file
  # WHY: Stores environment/config info
  # HOW: Uses variables + locals
  # REAL DEVOPS: config files, deployment metadata
  ###########################################
  #content = local.message
#}

#############################################
# OUTPUTS (DEFINED IN OUTPUTS.TF)
# WHAT: Shows final values after execution
# WHY: Used for automation (CI/CD, scripts)
# HOW: Reads Terraform state
# REAL DEVOPS: Pass values to Jenkins/Ansible/other tools
#############################################