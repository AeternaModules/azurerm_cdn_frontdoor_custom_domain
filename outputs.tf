output "cdn_frontdoor_custom_domains_id" {
  description = "Map of id values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cdn_frontdoor_custom_domains_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.cdn_frontdoor_profile_id if v.cdn_frontdoor_profile_id != null && length(v.cdn_frontdoor_profile_id) > 0 }
}
output "cdn_frontdoor_custom_domains_dns_zone_id" {
  description = "Map of dns_zone_id values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.dns_zone_id if v.dns_zone_id != null && length(v.dns_zone_id) > 0 }
}
output "cdn_frontdoor_custom_domains_expiration_date" {
  description = "Map of expiration_date values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.expiration_date if v.expiration_date != null && length(v.expiration_date) > 0 }
}
output "cdn_frontdoor_custom_domains_host_name" {
  description = "Map of host_name values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.host_name if v.host_name != null && length(v.host_name) > 0 }
}
output "cdn_frontdoor_custom_domains_name" {
  description = "Map of name values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cdn_frontdoor_custom_domains_tls" {
  description = "Map of tls values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.tls if v.tls != null && length(v.tls) > 0 }
}
output "cdn_frontdoor_custom_domains_validation_token" {
  description = "Map of validation_token values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.validation_token if v.validation_token != null && length(v.validation_token) > 0 }
}

