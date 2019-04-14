class Language < ApplicationRecord
  has_many :guide_languages, dependent: :destroy
  has_many :guides, through: :guide_languages
end
