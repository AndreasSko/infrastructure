resource "cloudflare_record" "hetzner" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "hetzner"
  value   = hcloud_server.andreas_sk.ipv4_address
  type    = "A"
  ttl     = 120
}

resource "cloudflare_record" "nextcloud" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "nextcloud.andreas-sk.de"
  value   = hcloud_server.andreas_sk.ipv4_address
  type    = "A"
  ttl     = 120
}

resource "cloudflare_record" "monitoring" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "monitoring.andreas-sk.de"
  value   = hcloud_server.andreas_sk.ipv4_address
  type    = "A"
  proxied = true
}

# Feedbin
resource "cloudflare_record" "feedbin" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "feedbin.andreas-sk.de"
  value   = hcloud_server.andreas_sk.ipv4_address
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "camo-feedbin" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "camo-feedbin.andreas-sk.de"
  value   = hcloud_server.andreas_sk.ipv4_address
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "extract-feedbin" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "extract-feedbin.andreas-sk.de"
  value   = hcloud_server.andreas_sk.ipv4_address
  type    = "A"
  proxied = true
}

data "cloudflare_zones" "andreas_sk" {
  filter {
    name = "andreas-sk.de"
  }
}
