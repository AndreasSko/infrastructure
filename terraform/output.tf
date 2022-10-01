resource "local_file" "ansible_inventory" {
  sensitive_content = templatefile("./templates/hosts.yml.tmpl", {
    addrs = [
      cloudflare_record.oracle.hostname,
    ]
  })
  filename = "./../ansible/hosts.yml"
}
