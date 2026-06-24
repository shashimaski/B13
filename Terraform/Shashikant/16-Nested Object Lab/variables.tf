variable "app" {
  type = object({
    name = string

    vm = object({
      size = string
      disk = number
    })

    tags = map(string)
  })

  default = {
    name = "my-app"

    vm = {
      size = "Standard_B1s"
      disk = 30
    }

    tags = {
      env = "dev"
      owner = "team1"
    }
  }
}