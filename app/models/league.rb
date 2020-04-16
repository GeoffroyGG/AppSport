class League < ApplicationRecord
  has_many :players, dependent: :destroy
  validates :name, presence: true
  validates :stars, presence: true
  has_one_attached :photo
  belongs_to :user
end
