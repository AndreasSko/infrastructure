variable "hcloud_location" {
  type    = string
  default = "nbg1"
}

variable "ssh_pub_key" {
  type        = string
  description = "The public key that will be used to manage the server from GitHub Actions"
}

variable "workstation_ssh_pub_key" {
  type        = string
  description = "The public key that will be used to access the server from the workstation"
}
