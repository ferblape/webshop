require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "#nicename" do
    product = Product.new :name => "iPhone 4"
    assert_equal "iphone-4", product.nicename
    product.name = "iPhone 5S"
    assert_equal "iphone-5s", product.nicename
  end
end
