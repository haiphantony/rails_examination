# frozen_string_literal: true

class ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[create destroy]
  before_action :set_reviews, only: %i[destroy]

  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review, status: :ok
    else
      render json: @review.errors.full_messages, status: :bad_request
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
