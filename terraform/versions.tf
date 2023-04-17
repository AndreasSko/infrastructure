terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.63.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.25.0"
    }
    oci = {
      source  = "oracle/oci"
      version = "4.96.0"
    }
  }
  required_version = ">= 0.13"
}
