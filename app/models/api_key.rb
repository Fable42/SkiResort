# typed: strict

class ApiKey < ApplicationRecord
  HMAC_SECRET_KEY = Rails.application.credentials.api_key_hmac_secret_key
  TOKEN_NAMESPACE = "tkn"

  attr_accessor :raw_value

  validates :type_prefix, :random_prefix, :token, presence: true
end
