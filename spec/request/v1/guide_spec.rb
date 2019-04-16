# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api::V1::GuidesController', type: :request do
  include_context 'api'

  describe 'GET /api/v1/guides/:id' do
    context 'when the guides exists' do
      before do
        @guide = create :guide,
                        languages: [create(:language)],
                        activities: [create(:activity)]
        get "/api/v1/guides/#{@guide.id}"
      end
      let(:languages) do
        @guide.languages.map do |language|
          {
            id: language.id,
            code: language.code,
            created_at: language.created_at.as_json,
            updated_at: language.updated_at.as_json
          }.stringify_keys
        end
      end
      let(:activities) do
        @guide.activities.map do |activity|
          {
            id: activity.id,
            name: activity.name,
            created_at: activity.created_at.as_json,
            updated_at: activity.updated_at.as_json
          }.stringify_keys
        end
      end
      let(:expected_response) do
        {
          id: @guide.id,
          email: @guide.email,
          languages: languages,
          activities: activities
        }.stringify_keys
      end
      it_behaves_like 'http_status_code_200_with_json'
    end

    context 'when the guide does not exist' do
      before do
        get '/api/v1/guides/non_existing_user_id'
      end

      it_behaves_like 'http_status_code_404'
    end
  end
end
