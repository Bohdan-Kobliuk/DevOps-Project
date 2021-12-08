provider "aws" {
  region = var.aws_reg
  # version = "2.12.0"
  profile = "terraform"
}

terraform {
  required_providers {
    template = {
      source  = "hashicorp/template"
      version = "~> 2.1.2"
    }
  }
}
