terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.52.10"
    }
    oci = {
      source  = "oracle/oci"
      version = "6.3.0"
    }
  }
  required_version = ">= 0.13"
}
