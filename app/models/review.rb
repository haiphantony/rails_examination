class Review < ApplicationRecord
  belongs_to :guide

  validates :score, presence: true, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }

end
