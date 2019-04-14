# frozen_string_literal: true

class Language < ApplicationRecord
  has_many :guide_languages, dependent: :destroy
  has_many :guides, through: :guide_languages

  validates :code, presence: true, uniqueness: true
end
