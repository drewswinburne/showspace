class Show < ApplicationRecord
  has_many :performances, dependent: :destroy
  has_many :artists, through: :performances
end
