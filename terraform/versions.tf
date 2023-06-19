terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.58.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.35.0"
    }
    oci = {
      source  = "oracle/oci"
      version = "4.96.0"
    }
  }
  required_version = ">= 0.13"
}
