# frozen_string_literal: true

class GuideActivity < ApplicationRecord
  belongs_to :guide
  belongs_to :activity
end
