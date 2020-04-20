class League < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :players, dependent: :destroy
  validates :name, presence: true
  validates :stars, presence: true
  validates :address, presence: true
  has_one_attached :photo
  belongs_to :user
end
