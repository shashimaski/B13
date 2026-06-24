variable "env" {
  type    = string
  default = "dev"
}

variable "replicas" {
  type    = number
  default = 2
}

variable "is_prod" {
  type    = bool
  default = false
}