variable "tf_state_bucket" {
  description = "The name of the S3 bucket to store the Terraform state file"
  default     = "lrudko-devops-recipe-app-tf-state"
}

variable "tf_state_lock_table" {
  description = "The name of the DynamoDB table to store the Terraform state lock"
  default     = "devops-recipe-app-tf-lock"
}

variable "project" {
  description = "The name of the project"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "The contact person for the project"
  default     = "rudkolg@gmail.com"
}
