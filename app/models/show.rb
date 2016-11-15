class Show < ApplicationRecord
    extend TimeSplitter::Accessors
    split_accessor :starts_at

  has_many :performances, dependent: :destroy
  has_many :artists, through: :performances
end
