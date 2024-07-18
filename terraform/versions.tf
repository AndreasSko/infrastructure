terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.25.0"
    }
    oci = {
      source  = "oracle/oci"
      version = "4.123.0"
    }
  }
  required_version = ">= 0.13"
}
