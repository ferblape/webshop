class Review < ActiveRecord::Base
  attr_accessible :description, :rating, :summary

  belongs_to :product

  validates :summary, presence: true,
                      length: { minimum: 3 }
  validates :rating,  presence: true,
                      numericality: true
end
