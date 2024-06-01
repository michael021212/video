class Store < ApplicationRecord
  has_many :machines

  geocoded_by :address
  after_validation :geocode
end
