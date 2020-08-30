resource "cloudflare_record" "hetzner" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "hetzner"
  value   = hcloud_server.andreas_sk.ipv4_address
  type    = "A"
  ttl     = 120
}

resource "cloudflare_record" "bthl_tours" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "bthl-tours.andreas-sk.de"
  value   = hcloud_server.andreas_sk.ipv4_address
  type    = "A"
  proxied = true
}

data "cloudflare_zones" "andreas_sk" {
  filter {
    name = "andreas-sk.de"
  }
}
