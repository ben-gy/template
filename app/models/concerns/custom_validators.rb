module CustomValidators
  extend ActiveSupport::Concern

  VALID_EMAIL_REGEX = /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/i
  # VALID_WEBSITE_REGEX = /\A([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?\z/i
  # VALID_FULLNAME_REGEX = /\A(\w.+\s).+\z/i
  # VALID_PHONE_NUMBER = /\A[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\.0-9]*\z/i
  # VALID_AU_POSTCODE = /\A(?:(?:[2-8]\d|9[0-7]|0?[28]|0?9(?=09))(?:\d{2}))\z/i
  # VALID_AU_MOBILE_NUMBER = /\A(04[0-9]{8})\z/i
  # VALID_HEX_COLOR_REGEX = /\A([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})\z/i
  # VALID_IPV4_ADDRESS_REGEX = /\A((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})\z/i
end
