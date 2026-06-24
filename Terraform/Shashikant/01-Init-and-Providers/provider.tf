terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.9.0"
    }
  }
}


# LAB 01: INIT AND PROVIDERS
# --------------------------
# This lab teaches how Terraform starts working.

# What happens here:
# 1. terraform init → downloads required providers
# 2. provider block → tells Terraform which cloud/tool to use

# Think:
# "Terraform cannot do anything until it gets tools (providers)."

# Why we need this:
# Terraform is just a tool engine.
# Providers are like drivers (Azure, AWS, Local, etc.)

# What we learned:
# - How Terraform initializes project
# - How providers are installed
# - How Terraform connects to real systems