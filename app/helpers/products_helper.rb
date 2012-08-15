module ProductsHelper

  def tags_names(product)
    product.tags.map(&:name).join(', ')
  end
end
