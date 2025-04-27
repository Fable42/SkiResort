module ApiKeys
  class GenerationService
    def generate_new_token
      key = ApiKey.new

      key.type_prefix = "#{ApiKey::TOKEN_NAMESPACE}_test_"
      key.random_prefix = SecureRandom.base58(6)

      new_token = [
        key.type_prefix, 
        key.random_prefix,
        SecureRandom.base58(24)
      ].join("")

      key.raw_value = new_token
      key.token = generate_digest(new_token)

      key.save

      new_token
    end

    def generate_digest(token)
      OpenSSL::HMAC.hexdigest("SHA256", ApiKey::HMAC_SECRET_KEY, token)
    end
  end
end
