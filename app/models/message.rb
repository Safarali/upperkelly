class Message < ApplicationRecord
  attr_accessor :name, :phone, :content

  validates :name, presence: true
  validates :phone, numericality: true, length: { minimum: 10, maximum: 15}
  validates :content, presence: true, length: { maximum: 500 }
end
