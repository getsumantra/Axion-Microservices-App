variable "rgs" {
  description = "The name of the resource group"
  type        = map(object({
    resource_group_name = string
    location = string
  }))
}
