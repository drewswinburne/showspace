class Show < ApplicationRecord
  validates :flyer_img, :starts_at_date, :starts_at_hour, :venue, :cost, presence: true
  has_many :performances, dependent: :destroy
  has_many :artists, through: :performances
end
