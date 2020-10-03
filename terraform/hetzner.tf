resource "hcloud_server" "andreas_sk" {
  name        = "andreas-sk"
  image       = data.hcloud_image.ubuntu_2004.name
  server_type = "cx11"
  location    = var.hcloud_location
  ssh_keys = [
    "askorczyk@Andreass-MacBook-Pro.local",
    hcloud_ssh_key.github.name
  ]

  user_data = <<-EOT
  #cloud-config
  disable_root: true
  ssh_pwauth: no
  allow_public_ssh_keys: true
  users:
  - name: ubuntu
    groups: users, admin
    sudo: ALL=(ALL) NOPASSWD:ALL
    shell: /bin/bash
    ssh_authorized_keys:
      - ${hcloud_ssh_key.github.public_key}
      - ${var.workstation_ssh_pub_key}
  EOT
}

resource "hcloud_ssh_key" "github" {
  name       = "GitHub"
  public_key = var.ssh_pub_key
}

data "hcloud_image" "ubuntu_2004" {
  name = "ubuntu-20.04"
}
