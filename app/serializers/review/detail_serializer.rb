# frozen_string_literal: true

class Review
  class DetailSerializer < ActiveModel::Serializer
    attributes :id, :score, :comment
  end
end
