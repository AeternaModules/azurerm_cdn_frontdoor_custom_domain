output "cdn_frontdoor_custom_domains_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.cdn_frontdoor_profile_id }
}
output "cdn_frontdoor_custom_domains_dns_zone_id" {
  description = "Map of dns_zone_id values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.dns_zone_id }
}
output "cdn_frontdoor_custom_domains_expiration_date" {
  description = "Map of expiration_date values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.expiration_date }
}
output "cdn_frontdoor_custom_domains_host_name" {
  description = "Map of host_name values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.host_name }
}
output "cdn_frontdoor_custom_domains_name" {
  description = "Map of name values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.name }
}
output "cdn_frontdoor_custom_domains_tls" {
  description = "Map of tls values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.tls }
}
output "cdn_frontdoor_custom_domains_validation_token" {
  description = "Map of validation_token values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : k => v.validation_token }
}

