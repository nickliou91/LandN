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
  		redirect_to @product
  	else
  		redirect_to @product
  	end

  end


  def index
    @products = Product.all
  end

  def show

  
  end

  def edit
    @product = Product.find(params[:id])
    @categories =Category.all
    @sub_categories = SubCategory.all 


  end
  def update 

    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] ="Product Update"
      redirect_to action:"index"
    else
      render 'edit'
    end

  end

  def destroy
    Product.find(params[:id]).destroy
    flash[:success] = "Product deleted Successful!"
    redirect_to products_path
  end


  private 
  	def product_params
  		params.require(:product).permit(:sku,:user_id, :name, :file, :width, :height, :depth, :category_id, :sub_category_id, :product_order)
  	end
end
