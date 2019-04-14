class Guide < ApplicationRecord
  has_many :guide_languages, dependent: :destroy
  has_many :languages, through: :guide_languages
  has_many :guide_activities, dependent: :destroy
  has_many :activities, through: :guide_activities

end
