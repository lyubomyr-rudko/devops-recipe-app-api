terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "lrudko-devops-recipe-app-tf-state"
    key            = "tf-state-setup"
    region         = "eu-north-1"
    encrypt        = true
    dynamodb_table = "devops-recipe-app-tf-lock"

  }
}

provider "aws" {
  profile = "AdministratorAccess-183295421958"
  region  = "eu-north-1"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      contact     = var.contact
      ManagedBy   = "Terraform/setup"
    }
  }
}
