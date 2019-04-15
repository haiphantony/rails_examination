# frozen_string_literal: true

class GuidesController < ApplicationController
  before_action :set_guide, only: %i[show]
  def index
    @guide_search_form = GuideSearchForm.new search_params
    @guides = @guide_search_form.search.page(params[:page]).per(10)
  end

  def show
    @reviews = Review.where(guide: @guide)
  end

  private

  def search_params
    return {} if params[:guide_search_form].blank?
    params.require(:guide_search_form).permit(GuideSearchForm::PARAMS)
  end

  def set_guide
    @guide = Guide.find(params[:id])
  end
end
