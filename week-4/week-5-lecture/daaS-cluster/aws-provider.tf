provider "aws" {
  region = "eu-central-1"
}

terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.11.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.14.0"
    }
  }

  required_version = "~> 1.5"
}
