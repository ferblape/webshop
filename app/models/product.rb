class Product < ActiveRecord::Base
  attr_accessible :brand, :category, :description, :name, :price
end
