terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.9.0"
    }
  }
}

resource "random_string" "name" {
  length  = 8
  special = false
}



# LAB 04: RANDOM PROVIDER
# -----------------------
# This lab teaches external providers (not built-in Terraform).

# What happens:
# Terraform uses "random provider" to generate random values.

# Example:
# random_string.name

# Why we need this:
# In real systems we need:
# - unique passwords
# - unique IDs
# - random names for resources

# What we learned:
# - provider installation (random provider)
# - external plugin usage
# - generating dynamic values