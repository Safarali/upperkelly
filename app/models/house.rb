class House < ApplicationRecord
  belongs_to :admin
  has_many :photos

  validates :name, presence: true, length: { maximum: 15 }
  validates :summary, presence: true, length: { maximum: 200 }
  validates :address, presence: true
  validates :bedroom, numericality: true
  validates :bathroom, presence: true
  validates :garage, numericality: true
  validates :sf, numericality: { greater_than: 1500 }
  validates :price, numericality: { greater_than: 700000 }
end
