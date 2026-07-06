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
      certificate_type        = optional(string) # Default: "ManagedCertificate"
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
  # --- Unconfirmed validation candidates, derived from azurerm_cdn_frontdoor_custom_domain's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.FrontDoorCustomDomainName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: cdn_frontdoor_profile_id
  #   source:    [from validate.FrontDoorProfileID] !ok
  # path: cdn_frontdoor_profile_id
  #   source:    [from validate.FrontDoorProfileID] err != nil
  # path: dns_zone_id
  #   source:    [from dnsValidate.ValidateDnsZoneID] !ok
  # path: dns_zone_id
  #   source:    [from dnsValidate.ValidateDnsZoneID] err != nil
  # path: host_name
  #   source:    validate.FrontDoorCustomDomainHostName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: tls.certificate_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tls.minimum_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tls.cdn_frontdoor_secret_id
  #   source:    [from validate.FrontDoorSecretID] !ok
  # path: tls.cdn_frontdoor_secret_id
  #   source:    [from validate.FrontDoorSecretID] err != nil
  # path: tls.cipher_suite.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tls.cipher_suite.custom_ciphers.tls12[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tls.cipher_suite.custom_ciphers.tls13[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

