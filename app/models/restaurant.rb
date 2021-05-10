class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :product_categories
  has_many :orders

  has_one_attached :image

  validates :name, :status, :delivery_tax, :city, :neighborhood, :street, :number, presence: true

  enum status: { open: 0 }
end
