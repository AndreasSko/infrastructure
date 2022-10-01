provider "aws" {
  region = "eu-central-1"
}

provider "oci" {
  region       = "eu-frankfurt-1"
  tenancy_ocid = var.oracle_tenancy_ocid
  user_ocid    = var.oracle_user_ocid
  private_key  = var.oracle_private_key
  fingerprint  = var.oracle_fingerprint
}
