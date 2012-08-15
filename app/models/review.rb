class Review < ActiveRecord::Base
  belongs_to :product
  attr_accessible :description, :rating, :summary
end
