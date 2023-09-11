terraform {
  required_version = "-> 1.5.7"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.16.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region     = data.var.region
  access_key = data.var.access_key
  secret_key = data.var.secret_key

}