class Vote < ApplicationRecord
  belongs_to :song
  counter_culture :song
end
