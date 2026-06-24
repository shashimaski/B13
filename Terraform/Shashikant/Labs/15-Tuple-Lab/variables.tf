variable "app_config" {
  type = tuple([
    string,
    number,
    bool
  ])

  default = [
    "dev-app",
    3,
    true
  ]
}