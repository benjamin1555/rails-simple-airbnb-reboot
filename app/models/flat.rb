class Flat < ApplicationRecord
  validates :name, :address, :description, presence: true
  validates :price_per_night, inclusion: { in: 10..10_000 }
  validates :number_of_guests, inclusion: { in: 1..30 }
end
