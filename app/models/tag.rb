# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  product_id :integer          indexed
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_tags_on_product_id  (product_id)
#

class Tag < ActiveRecord::Base
  belongs_to :product
  attr_accessible :name
end
