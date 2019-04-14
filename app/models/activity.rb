class Activity < ApplicationRecord
  has_many :guide_activities, dependent: :destroy
  has_many :guides, through: :guide_activities
end
