class Vote < ApplicationRecord
  belongs_to :song
  counter_culture :song
  validates :name, length: { maximum: 30 }
  validates :body, length: { maximum: 500 }
  scope :comments, -> { where.not(name: nil, body: nil).order(created_at: :desc) }
end
