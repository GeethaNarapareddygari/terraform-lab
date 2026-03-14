variable "container_config" {
  type = list(object({
    name = string
    port = number
  }))
  default = [
    { name = "web1", port = 8091 },
    { name = "web2", port = 8092 },
    { name = "web3", port = 8093 }
  ]
}