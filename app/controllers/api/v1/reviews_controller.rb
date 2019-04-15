# frozen_string_literal: true

module Api
  module V1
    class ReviewsController < Api::BaseController
      before_action :set_reviews, only: %i[destroy]
      def create
        @review = Review.new(review_params)
        if @review.save
          render json: @review, status: :ok, serializer: Review::DetailSerializer
        else
          render json: ErrorSerializer.serialize(@review.errors.messages.to_h), status: :bad_request
        end
      end

      def destroy
        if @review.destroy
          render json: {}, status: :ok
        else
          render json: {}, status: :bad_request
        end
      end

      private

      def review_params
        params.permit(:score, :comment, :guide_id)
      end

      def set_reviews
        @review = Review.find(params[:id])
      end
    end
  end
end
