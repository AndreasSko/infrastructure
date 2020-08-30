output "server_ipv4" {
  value     = hcloud_server.andreas_sk.ipv4_address
  sensitive = true
}
