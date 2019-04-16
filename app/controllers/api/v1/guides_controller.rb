# frozen_string_literal: true

# frozen_string_literal: true

module Api
  module V1
    class GuidesController < Api::BaseController
      before_action :set_guide, only: %i[show]

      # rubocop:disable Style/GuardClause
      def show
        if stale?(last_modified: @guide.updated_at.utc)
          cache_options = { compress: true, expires_in: 24.hours, race_condition_ttl: 10 }
          Rails.cache.fetch("#{@guide.cache_key}/#{__method__}", cache_options) do
            render json: @guide, include: %i[languages activities]
          end
        end
      end
      # rubocop:enable Style/GuardClause

      private

      def set_guide
        @guide = Guide.find(params[:id])
      end
    end
  end
end
