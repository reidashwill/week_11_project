class ReviewsController < ApplicationController
  
  def new
    @product = Product.find(params[:product_id])
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
    @review = Review.find(params[:id])
    render :edit
  end

  def show
    @review = Review.find(params[:id])
    @product = Product.find(@review.product_id)
  end

  def update
    @review = Reveiw.find(params[:id])
    @product = Product.find(@review.product_id)
    if @review.update(review_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @product = Product.find(@review.product_id)
    @review.destroy
    redirect_to product_path(@product)
  end

  private
  def review_params
    params.require(:reveiw).permit(:author, :content_body, :rating)
  end
end
