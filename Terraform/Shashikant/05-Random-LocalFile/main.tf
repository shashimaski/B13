terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.9.0"
    }
  }
}

resource "random_string" "suffix" {
  length  = 6
  special = false
}

resource "local_file" "file1" {
  filename = "demo-${random_string.suffix.result}.txt"
  content  = "This file is created using Terraform + Random"
}


# LAB 05: RANDOM + LOCAL FILE INTEGRATION
# ----------------------------------------
# This lab teaches how two resources can work together.

# What happens:
# - random provider generates value
# - local_file uses that value

# Example:
# random_string → used inside local_file content

# Why we need this:
# Real infrastructure is not isolated.
# Everything is connected.

# What we learned:
# - resource dependency
# - interpolation (${})
# - chaining resources together