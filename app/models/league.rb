class League < ApplicationRecord
  # include PgSearch::Model
  # pg_search_scope :search_by_name_and_address,
  #   against: [ :name, :address ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }
  # multisearchable against: [:name, :address]
  searchkick
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :players, dependent: :destroy
  validates :name, presence: true
  validates :stars, presence: true
  validates :address, presence: true
  has_one_attached :photo
  belongs_to :user
end
