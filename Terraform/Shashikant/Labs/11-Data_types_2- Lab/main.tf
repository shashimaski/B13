terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "file" {
  filename = "regions.txt"
  content  = "First: ${local.first_region} | All: ${local.all_regions}"
}

#############################################
# 🧠 LIST DATA TYPE (Terraform)
#############################################

# 1. LIST = multiple values in one variable
# WHY: store multiple items together (regions, servers, ports)
# REAL DEVOPS: multi-region deployments, multiple VMs

# Example:
# var.regions = ["eastus", "centralindia", "westus"]


#############################################
# 2. INDEXING
#############################################

# WHY: access specific item from list
# HOW: use index number (starts from 0)

# Example:
# var.regions[0] = "eastus"
# var.regions[1] = "centralindia"


#############################################
# 3. FUNCTIONS (join)
#############################################

# WHY: convert list → string (for display/logging)
# HOW: join(",", list)

# Example:
# join(",", var.regions)
# OUTPUT: "eastus,centralindia,westus"


#############################################
# 🔥 REAL DEVOPS USE CASES
#############################################

# regions → multi-region deployment
# servers → multiple VM names
# ports → security rules (80, 443, 22)
# tags → metadata for infra tracking


#############################################
# ⚠️ RULES
#############################################

# LIST ≠ single value
# LIST = collection of values

# Avoid repetition → use list instead


#############################################
# 🧠 MEMORY TRICK
#############################################

# LIST = "ONE VARIABLE, MANY VALUES"