# frozen_string_literal: true

# frozen_string_literal: true

class GuideSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :languages
  has_many :activities
end
