variable "env" {
  description = "Environment name"
  type        = string
}

variable "region" {
  description = "Azure region (just value, no Azure needed)"
  type        = string
  default     = "eastus"
}