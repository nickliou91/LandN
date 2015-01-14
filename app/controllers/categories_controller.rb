class CategoriesController < ApplicationController
  

  def new
  	@category =Category.new
  end

  def create 
  	@category = Category.create(category_params)
  	if @category.save
  		flash[:success] = "Cateogry Add Successful"
  		redirect_to categories_path
  	else
	  	redirect_to categories_path
  	end

  end

  def index
  	@categories= Category.all
  	@category = Category.new
  end

  def show

  	@category= Category.find(params[:id])
  	@category_sub_category = CategorySubCategory.where(category_id: @category.id)
  	# byebug
  	# @category_sub_category.each do |cat|
   
  		if @category_sub_category.count == 0 
  			
  			 @products = Product.where(category_id: @category.id)
  		end
  	
  end

  def edit

    @category =Category.find(params[:id])
  end

  def update 

    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:success] ="Category Update"
      redirect_to action:"index"
    else
      render 'edit'
    end

  end


  def destroy
  	Category.find(params[:id]).destroy
  	flash[:success] = "Category deleted Successful!"
  	redirect_to categories_path
  end


  private 
  	def category_params
  		params.require(:category).permit(:title, :description)
  	end 
end
