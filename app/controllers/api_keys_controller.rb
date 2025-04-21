class ApiKeysController < ApplicationController
  def index
    @api_keys = ApiKey.all
  end

  def create
    ApiKeys::GenerationService.new.generate_new_token

    redirect_to api_keys_path
  end
end
