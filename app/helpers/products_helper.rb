module ProductsHelper

  def tags_names(product)
    product.tags.pluck(:name).join(', ')
  end
end
