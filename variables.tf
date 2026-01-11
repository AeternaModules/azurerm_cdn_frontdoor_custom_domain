variable "cdn_frontdoor_custom_domains" {
  description = <<EOT
Map of cdn_frontdoor_custom_domains, attributes below
Required:
    - cdn_frontdoor_profile_id
    - host_name
    - name
    - tls (block):
        - cdn_frontdoor_secret_id (optional)
        - certificate_type (optional)
        - minimum_tls_version (optional)
Optional:
    - dns_zone_id
EOT

  type = map(object({
    cdn_frontdoor_profile_id = string
    host_name                = string
    name                     = string
    dns_zone_id              = optional(string)
    tls = object({
      cdn_frontdoor_secret_id = optional(string)
      certificate_type        = optional(string, "ManagedCertificate")
      minimum_tls_version     = optional(string, "TLS12")
    })
  }))
}

