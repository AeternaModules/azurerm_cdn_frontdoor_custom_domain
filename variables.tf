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
        - cipher_suite (optional, block):
            - custom_ciphers (optional, block):
                - tls12 (optional)
                - tls13 (optional)
            - type (required)
        - minimum_tls_version (optional)
        - minimum_version (optional)
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
      certificate_type        = optional(string)
      cipher_suite = optional(object({
        custom_ciphers = optional(object({
          tls12 = optional(set(string))
          tls13 = optional(set(string))
        }))
        type = string
      }))
      minimum_tls_version = optional(string)
      minimum_version     = optional(string)
    })
  }))
  # Note: 13 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

