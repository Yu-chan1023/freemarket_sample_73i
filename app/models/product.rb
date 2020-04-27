class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 40 }
  validates :infomation, presence: true, length: { maximum: 1000 }

  has_many :product_images

  accepts_nested_attributes_for :product_images
end
