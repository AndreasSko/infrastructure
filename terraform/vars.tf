variable "ssh_pub_key" {
  type        = string
  description = "The public key that will be used to manage the server from GitHub Actions"
}

variable "workstation_ssh_pub_key" {
  type        = string
  description = "The public key that will be used to access the server from the workstation"
}

variable "oracle_tenancy_ocid" {
  type = string
}

variable "oracle_user_ocid" {
  type = string
}

variable "oracle_compartment_id" {
  type = string
}

variable "oracle_private_key" {
  type = string
}

variable "oracle_fingerprint" {
  type = string
}
