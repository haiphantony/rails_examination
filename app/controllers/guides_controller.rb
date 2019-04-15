# frozen_string_literal: true

class GuidesController < ApplicationController
  def index
    @guide_search_form = GuideSearchForm.new search_params
    @guides = @guide_search_form.search
  end

  private

  def search_params
    return {} if params[:guide_search_form].blank?
    params.require(:guide_search_form).permit(GuideSearchForm::PARAMS)
  end
end
