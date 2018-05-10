class Song < ApplicationRecord
  has_many :votes
  scope :order_by_count, -> { order(votes_count: :desc) }
end
