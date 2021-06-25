terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.46.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "2.22.0"
    }
  }
  required_version = ">= 0.13"
}
