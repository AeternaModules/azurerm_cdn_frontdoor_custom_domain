resource "azurerm_cdn_frontdoor_custom_domain" "cdn_frontdoor_custom_domains" {
  for_each = var.cdn_frontdoor_custom_domains

  cdn_frontdoor_profile_id = each.value.cdn_frontdoor_profile_id
  host_name                = each.value.host_name
  name                     = each.value.name
  dns_zone_id              = each.value.dns_zone_id

  tls {
    cdn_frontdoor_secret_id = each.value.tls.cdn_frontdoor_secret_id
    certificate_type        = each.value.tls.certificate_type
    dynamic "cipher_suite" {
      for_each = each.value.tls.cipher_suite != null ? [each.value.tls.cipher_suite] : []
      content {
        dynamic "custom_ciphers" {
          for_each = cipher_suite.value.custom_ciphers != null ? [cipher_suite.value.custom_ciphers] : []
          content {
            tls12 = custom_ciphers.value.tls12
            tls13 = custom_ciphers.value.tls13
          }
        }
        type = cipher_suite.value.type
      }
    }
    minimum_tls_version = each.value.tls.minimum_tls_version
    minimum_version     = each.value.tls.minimum_version
  }
}

