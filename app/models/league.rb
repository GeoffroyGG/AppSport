class League < ApplicationRecord
  validates :name, presence: true
  validates :stars, presence: true
end
