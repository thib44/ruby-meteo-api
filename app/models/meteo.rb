class Meteo < ApplicationRecord
  validates :temperature, :pressure, :humidity, presence: true
end
