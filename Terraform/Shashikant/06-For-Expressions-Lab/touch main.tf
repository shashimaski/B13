variable "names" {
  default = ["adi", "karthik", "gupta"]
}


locals {
  upper_names = [for name in var.names : upper(name)]
}

output "result" {
  value = local.upper_names
}

# This lab teaches "for expressions" in Terraform.
# For expression is used to LOOP through a list or map
# and transform each value into something new.

# Think like this:
# "Take every item in a list → do something → give me a new list"

# Example:
# ["adi", "karthik"] → ["ADI", "KARTHIK"]

# We used:
# - for loop for lists
# - for loop for maps
# - transformation functions like upper(), lower(), join()

# Why we use it:
# In real DevOps, we don't manually write values.
# We process data dynamically (names, IPs, configs, tags, etc.)

# What we achieved:
# 1. Converted list values into new format
# 2. Built new maps from existing maps
# 3. Learned how Terraform can transform data (not just create infra)
# 4. Prepared for real-world automation logic

# Real meaning:
# Terraform is not just creating resources,
# it can also "process data like a programming language"

# LAB 06: FOR EXPRESSIONS
# -----------------------
# This lab teaches looping and transformation in Terraform.

# What happens:
# We loop through lists/maps and transform values.

# Example:
# ["adi", "karthik"] → ["ADI", "KARTHIK"]

# Why we need this:
# Real DevOps uses lists of:
# - users
# - servers
# - IPs
# - tags

# What we learned:
# - for loop in lists
# - for loop in maps
# - data transformation functions (upper, lower, join)
# - Terraform behaves like a mini programming language