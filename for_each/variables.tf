variable "server_config" {
  default = {
    web   = "t2.micro"
    db    = "t2.medium"
    cache = "t2.small"
  }
}
