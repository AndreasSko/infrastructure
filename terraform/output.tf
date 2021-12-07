output "server_ipv4" {
  value     = hcloud_server.andreas_sk.ipv4_address
  sensitive = true
}

resource "local_file" "ansible_inventory" {
  sensitive_content = templatefile("./templates/hosts.yml.tmpl", { IP = cloudflare_record.one-blu.hostname })
  filename          = "./../ansible/hosts.yml"
}
