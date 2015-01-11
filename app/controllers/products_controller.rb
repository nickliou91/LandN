class ProductsController < ApplicationController
  def new

  	@product = Product.new
  	@categories =Category.all
  	@sub_categories = SubCategory.all 
  end

  def create

  	@product = current_user.products.build(product_params)
  	
  	if @product.save
  		flash[:success]= "Photo Created"
  		redirect_to add_product_path
  	else
  		redirect_to add_product_path
  	end

  end


  def index
  end

  def show 
  end


  private 
  	def product_params
  		params.require(:product).permit(:sku, :file, :width, :height, :depth, :category_id, :sub_category_id)
  	end
end
