class Ahoy::Store < Ahoy::DatabaseStore
  # Disable automatic linking of visits and users (uncomment for GDPR).
  # def authenticate(data)
  # end
end

# Set to true for JavaScript tracking (GDPR: false).
Ahoy.api = true

# Mask IP addresses (GDPR: false).
Ahoy.mask_ips = true

# Enable cookies (GDPR: false, also nodify application.js).
Ahoy.cookies = false

# Specify wildcard domain tracking.
Ahoy.cookie_domain = :all
