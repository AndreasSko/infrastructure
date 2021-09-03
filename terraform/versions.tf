terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.57.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "2.26.1"
    }
  }
  required_version = ">= 0.13"
}
