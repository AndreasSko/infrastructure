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

resource "cloudflare_record" "ocis" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "ocis.andreas-sk.de"
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

resource "cloudflare_record" "feedbin-mx" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "feedbin.andreas-sk.de"
  value   = "mx.sendgrid.net"
  type    = "MX"
}

resource "cloudflare_record" "feedbin-sendgrid-mx1" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "em669.feedbin.andreas-sk.de"
  value   = "mx.sendgrid.net"
  type    = "MX"
}

resource "cloudflare_record" "feedbin-sendgrid-txt1" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "em669.feedbin.andreas-sk.de"
  value   = "v=spf1 include:sendgrid.net ~all"
  type    = "TXT"
}

resource "cloudflare_record" "feedbin-sendgrid-txt2" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "m1._domainkey.feedbin.andreas-sk.de"
  value   = "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDDmq/dVRkjJ5UfbZLlK4pMxkuifhrgpG4zkm4T1VwAuyUiSQFI7V5qDM9lDRnHEl6kWy2+UsOSAVzVYynawWLd28AkFl0a6i/oK79PQZFCAy+Dtfbjca8FBXVdX/10c7oFToFmu/XeuCYlZ4cCtTi1D7TQy8T+EXMVd+YQOXu3QIDAQAB"
  type    = "TXT"
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
