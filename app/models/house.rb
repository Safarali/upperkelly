class House < ApplicationRecord
  belongs_to :admin
  has_many :photos

  validates :name, presence: true, length: { maximum: 15 }
  validates :summary, presence: true, length: { maximum: 200 }
  validates :address, presence: true
  validates :bedroom, presence: true
  validates :bathroom, presence: true
  validates :garage, presence: true
  validates :sf, presence: true
  validates :price, presence: true
end
