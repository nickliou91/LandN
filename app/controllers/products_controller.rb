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

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] ="Product Update"
      redirect_to @product
    else
      render 'edit'
    end

  end

  private 
  	def product_params
  		params.require(:product).permit(:sku, :name, :file, :width, :height, :depth, :category_id, :sub_category_id)
  	end
end
