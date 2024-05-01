variable "tags" {
  type = map(string)
  default = {
    environment = "development"
    owner       = "shreeprakash"
    project     = "projectone"
  }
}