variable "tags" {
  type = map(string)

  default = {
    environment = "dev"
    project     = "terraform-demo"
    owner       = "devops-team"
  }
}