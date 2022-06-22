resource "cloudflare_record" "one-blu" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "1blu"
  value   = "v31671.1blu.de"
  type    = "CNAME"
  ttl     = 120
}

resource "cloudflare_record" "ocis" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "ocis.andreas-sk.de"
  value   = cloudflare_record.one-blu.hostname
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "monitoring" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "monitoring.andreas-sk.de"
  value   = cloudflare_record.one-blu.hostname
  type    = "CNAME"
  proxied = true
}

# Feedbin
resource "cloudflare_record" "feedbin" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "feedbin.andreas-sk.de"
  value   = cloudflare_record.one-blu.hostname
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "feedbin-mx" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "feedbin.andreas-sk.de"
  value   = "mx.sendgrid.net"
  type    = "MX"
}

resource "cloudflare_record" "sendgrid-mx-1" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "em4241.andreas-sk.de"
  value   = "mx.sendgrid.net."
  type    = "MX"
}

resource "cloudflare_record" "sendgrid-txt-1" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "em4241.andreas-sk.de"
  value   = "v=spf1 include:sendgrid.net ~all"
  type    = "TXT"
}

resource "cloudflare_record" "sendgrid-txt-2" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "m1._domainkey.andreas-sk.de"
  value   = "k=rsa; t=s; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCqlTMS9aIEBCk2IdrGRSP6r9DMREeY8Q7Rw9zYU4sqYm1rDSDmepYTIWgU8mMOQuo+VewvVJ9ZNgrizgIa1FJr2XV2FQxQkI//mz1QtEJ7fAbdlySRKa9HHK2M3tEbb0Lxf2sSCEvQxvV8TUQx+bLbbp5qsEGjYGtnLCymP4yUjwIDAQAB"
  type    = "TXT"
}

resource "cloudflare_record" "feedbin-sendgrid-cname-1" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "em3388.feedbin.andreas-sk.de"
  value   = "u27579616.wl117.sendgrid.net"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "feedbin-sendgrid-cname-2" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "s1._domainkey.feedbin.andreas-sk.de"
  value   = "s1.domainkey.u27579616.wl117.sendgrid.net"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "feedbin-sendgrid-cname-3" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "s2._domainkey.feedbin.andreas-sk.de"
  value   = "s2.domainkey.u27579616.wl117.sendgrid.net"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "camo-feedbin" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "camo-feedbin.andreas-sk.de"
  value   = cloudflare_record.one-blu.hostname
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "extract-feedbin" {
  zone_id = lookup(data.cloudflare_zones.andreas_sk.zones[0], "id")
  name    = "extract-feedbin.andreas-sk.de"
  value   = cloudflare_record.one-blu.hostname
  type    = "CNAME"
  proxied = true
}

data "cloudflare_zones" "andreas_sk" {
  filter {
    name = "andreas-sk.de"
  }
}
