class ApiKeysController < ApplicationController
  def index
    @api_keys = ApiKey.all
  end

  def create
    new_token_value = ApiKeys::GenerationService.new.generate_new_token

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("api_keys_table", partial: "api_keys/api_keys_table", locals: { api_keys: ApiKey.all, new_token_value: })
      end
    end
  end
end
