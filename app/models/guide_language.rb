# frozen_string_literal: true

class GuideLanguage < ApplicationRecord
  belongs_to :guide
  belongs_to :language
end
