output "cdn_frontdoor_custom_domains" {
  description = "All cdn_frontdoor_custom_domain resources"
  value       = azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains
}
output "cdn_frontdoor_custom_domains_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_custom_domains_dns_zone_id" {
  description = "List of dns_zone_id values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : v.dns_zone_id]
}
output "cdn_frontdoor_custom_domains_expiration_date" {
  description = "List of expiration_date values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : v.expiration_date]
}
output "cdn_frontdoor_custom_domains_host_name" {
  description = "List of host_name values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : v.host_name]
}
output "cdn_frontdoor_custom_domains_name" {
  description = "List of name values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : v.name]
}
output "cdn_frontdoor_custom_domains_tls" {
  description = "List of tls values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : v.tls]
}
output "cdn_frontdoor_custom_domains_validation_token" {
  description = "List of validation_token values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in azurerm_cdn_frontdoor_custom_domain.cdn_frontdoor_custom_domains : v.validation_token]
}

