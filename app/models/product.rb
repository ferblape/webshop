class Product < ActiveRecord::Base
  attr_accessible :brand, :category, :description, :name,
    :price, :tags_attributes

  has_many :reviews, dependent: :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, allow_destroy: :true,
                                       reject_if: :all_blank

  validates :name,  presence: true,
                    length: { minimum: 3 }
  validates :price, presence: true,
                    numericality: true
end
