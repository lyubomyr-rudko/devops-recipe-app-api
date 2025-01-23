variable "prefix" {
  description = "value to be prefixed to all resources"
  default     = "raa"
}

variable "project" {
  description = "The name of the project"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "The contact person for the project"
  default     = "rudkolg@gmail.com"
}

variable "db_username" {
  description = "User name"
  default     = "recipeapp"
}

variable "db_password" {
  description = "Password for the Terraform database"
}
