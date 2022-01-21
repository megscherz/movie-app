class Movie < ApplicationRecord
  validates :title, :director, length: { minimum: 2 }
  validates :year, numericality: { only_integer: true }
  validates :plot, presence: true, length: { in: 10..500 }
  validates :english, presence: true
end
