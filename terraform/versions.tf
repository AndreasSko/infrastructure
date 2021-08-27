terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.55.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "2.26.0"
    }
  }
  required_version = ">= 0.13"
}
