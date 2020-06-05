class ReviewsController < ApplicationController
  before_action :authorize, only: [:new, :create, :edit, :destroy]

  def index
    @reviews = Review.all 
    render :index
  end

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else 
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating, :product_id)
  end

end
