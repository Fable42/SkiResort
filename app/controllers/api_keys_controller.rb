class ApiKeysController < ApplicationController
  def index
    @api_keys = ApiKey.all
  end

  def create
    ::ApiKeys::GenerateService.new.call

    redirect_to api_keys_path
  end
end
