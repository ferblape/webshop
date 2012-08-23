# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  summary     :string(255)
#  rating      :integer
#  description :text
#  product_id  :integer          indexed
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_reviews_on_product_id  (product_id)
#

class Review < ActiveRecord::Base
  attr_accessible :description, :rating, :summary

  belongs_to :product

  validates :summary, presence: true,
                      length: { minimum: 3 }
  validates :rating,  presence: true,
                      numericality: true
end
