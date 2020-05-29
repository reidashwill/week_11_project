class ReviewsController < ApplicationController
  
  def new
    @review = Review.new
    render :new
  end

  def create
    @review = Review.new(review_params)
    @product = Product.find(@review.product_id)
    if @review.save
      redirect_to product_path(@product)
    else 
      render :new
    end
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end
end
