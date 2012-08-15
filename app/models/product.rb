class Product < ActiveRecord::Base
  attr_accessible :brand, :category, :description, :name, :price

  has_many :reviews

  validates :name,  presence: true,
                    length: { minimum: 3 }
  validates :price, presence: true,
                    numericality: true
end
