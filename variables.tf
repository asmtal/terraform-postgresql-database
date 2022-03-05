variable "name" {
  type        = string
  description = "Name of the database to create"
}

variable "host" {
  type        = string
  description = "Postgre Host"
}
variable "context" {
  type = object({
    organization = string
    environment  = string
    account      = string
    product      = string
    tags         = map(string)
  })
  description = "Default environmental context"
}
