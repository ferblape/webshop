class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(params[:review])
    
    if @review.save
      redirect_to @product
    else
      render 'products/show'
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])

    @review.destroy
    redirect_to @product
  end

end
