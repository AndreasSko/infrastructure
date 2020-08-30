output "server_ipv4" {
  value     = hcloud_server.andreas_sk.ipv4_address
  sensitive = true
}

resource "local_file" "ansible_inventory" {
  sensitive_content = templatefile("./templates/hosts.yml.tmpl", { IP = hcloud_server.andreas_sk.ipv4_address })
  filename          = "./../ansible/hosts.yml"
}
