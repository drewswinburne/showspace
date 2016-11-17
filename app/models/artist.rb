class Artist < ApplicationRecord
validates :name, :img_url, :music_url, presence: true
validates :bio, presence: true, length: {maximum: 350}


has_many :performances, dependent: :destroy
has_many :shows, through: :performances


end
