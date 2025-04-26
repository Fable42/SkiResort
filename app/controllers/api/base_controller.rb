module Api
  class BaseController < ActionController::API
    include ActionController::HttpAuthentication::Token::ControllerMethods

    before_action :authenticate_with_api_key

    attr_reader :current_api_key

    private

    def authenticate_with_api_key

      authenticate_or_request_with_http_token do |token, options|
        token = ApiKeys::GenerationService.new.generate_digest(token)
        @current_api_key = ApiKey.find_by(token:)
      end
    end

    def request_http_token_authentication(realm = "Application", message = nil)
      json_response = { errors: [message || "Access denied"] }
      headers["WWW-Authenticate"] = %(Bearer realm="#{realm.tr('"', "")}")
      render json: json_response, status: :unauthorized
    end
  end
end
