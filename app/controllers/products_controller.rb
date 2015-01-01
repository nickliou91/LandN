class ProductsController < ApplicationController
  def new
  	@product = Product.new
  end

  def create
  	@product = Product.create(params[:photo])
  	if @product.save
  		
  		flash[:success]= "Photo Created"
  		render 'new'
  	else
  	end

  end
end
