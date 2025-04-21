module Api
  module V1
    class ApiKeysController < BaseController
      def show
        render json: {
          id: current_api_key.id
        }
      end
    end
  end
end
