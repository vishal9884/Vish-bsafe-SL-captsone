terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.28.0"
    }
  }
}
provider "aws" {
  # Configuration options
    region =  "us-east-1"
    access_key = ""
    secret_key = ""
    token = ""
}
