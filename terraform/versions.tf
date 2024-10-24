terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.37.0"
    }
    oci = {
      source  = "oracle/oci"
      version = "6.3.0"
    }
  }
  required_version = ">= 0.13"
}
