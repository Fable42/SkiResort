module Api
  module V1
    class GeoPositionsController < BaseController
      def create
        new_position = GeoPosition.new(position_attributes)

        if new_position.save
          render json: new_position, status: :created
        else
          render json: { errors: new_position.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def position_attributes
        params.require(:geo_position).permit(:longitude, :latitude, :equipment_unit_id)
      end
    end
  end
end
