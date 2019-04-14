# frozen_string_literal: true

class Guide < ApplicationRecord
  has_many :guide_languages, dependent: :destroy
  has_many :languages, through: :guide_languages
  has_many :guide_activities, dependent: :destroy
  has_many :activities, through: :guide_activities

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: true
end
