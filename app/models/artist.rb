class Artist < ApplicationRecord
has_many :performances, dependent: :destroy
has_many :shows, through: :performances


end
