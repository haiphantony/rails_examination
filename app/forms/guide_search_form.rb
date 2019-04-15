# frozen_string_literal: true

class GuideSearchForm
  include ActiveModel::Model
  attr_accessor :language_id, :activity_id

  PARAMS = %i[language_id activity_id].freeze

  def search
    query = Guide.all
    query = query.joins(:guide_languages).where(guide_languages: { language_id: language_id }) if language_id.present?
    query = query.joins(:guide_activities).where(guide_activities: { activity_id: activity_id }) if activity_id.present?

    query.order(created_at: :desc)
  end
end
